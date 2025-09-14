package grpc

import (
	"chaty/grpc/proto"
	"fmt"
	"log"
	"math/rand"
	"net"

	"google.golang.org/grpc"
)

type Server struct {
	proto.UnimplementedChatServiceServer
	Hub *Hub
}

func NewServer(hub *Hub) Server {
	return Server{
		Hub: hub,
	}
}

func (s *Server) Serve(port string) {
	lis, err := net.Listen("tcp", ":"+port)
	if err != nil {
		log.Fatalf("failed to listen at port %s: %v", port, err)
	}
	fmt.Println("listening at port:", port)

	var opts []grpc.ServerOption
	grpcServer := grpc.NewServer(opts...)
	proto.RegisterChatServiceServer(grpcServer, s)
	log.Fatal(grpcServer.Serve(lis))
}

func (s *Server) Connect(conn proto.ChatService_ConnectServer) error {
	userId := fmt.Sprint(rand.Intn(1e6))
	client := &Client{
		Id:                userId,
		Conn:              conn,
		BroadcastedEvents: make(chan *BroadcastedEvent),
	}
	for {
		req, err := conn.Recv()
		if err != nil {
			s.handleUserDisconnect(client.Id, client.Name)
			return err
		}
		switch req := req.Event.(type) {
		case *proto.ClientEvents_JoinRequest:
			s.handleJoinRequest(conn, req, client)
		case *proto.ClientEvents_ListUsers:
			s.handleListUsers(conn, req, userId)
		case *proto.ClientEvents_ChatMessage:
			s.handleMessageRequest(conn, req, userId)
		case *proto.ClientEvents_TypingState:
			s.handleUpdateTypingState(conn, req, userId)
		}
	}
}

func (s *Server) handleJoinRequest(conn proto.ChatService_ConnectServer, req *proto.ClientEvents_JoinRequest, client *Client) {
	err := conn.Send(&proto.ServerEvents{
		Event: &proto.ServerEvents_JoinResponse{
			JoinResponse: &proto.JoinResponse{
				UserId:   client.Id,
				UserName: req.JoinRequest.UserName,
			},
		},
	})
	if err != nil {
		return
	}
	client.Name = req.JoinRequest.UserName
	s.Hub.Register <- client
	go client.sendBroadcastedEvents()
	event := &BroadcastedEvent{
		SenderId: client.Id,
		Event: &proto.ServerEvents{
			Event: &proto.ServerEvents_UserEvents{
				UserEvents: &proto.UserEvents{
					UserId:   client.Id,
					Events:   proto.UserEvents_joined,
					UserName: req.JoinRequest.UserName,
				},
			},
		},
	}
	s.Hub.Broadcast <- event
}

func (s *Server) handleMessageRequest(conn proto.ChatService_ConnectServer, req *proto.ClientEvents_ChatMessage, userId string) {
	event := &BroadcastedEvent{
		SenderId: userId,
		Event: &proto.ServerEvents{
			Event: &proto.ServerEvents_ChatMessage{
				ChatMessage: &proto.ChatMessage{
					UserId:   req.ChatMessage.UserId,
					UserName: req.ChatMessage.UserName,
					Text:     req.ChatMessage.Text,
					Id:       req.ChatMessage.Id,
				},
			},
		},
	}
	s.Hub.Broadcast <- event
	conn.Send(&proto.ServerEvents{
		Event: &proto.ServerEvents_MessageResponse{
			MessageResponse: &proto.MessageResponse{
				IsOk:      true,
				RequestId: req.ChatMessage.Id,
			},
		},
	})
}

func (s *Server) handleUpdateTypingState(conn proto.ChatService_ConnectServer, req *proto.ClientEvents_TypingState, userId string) {
	event := &BroadcastedEvent{
		SenderId: userId,
		Event: &proto.ServerEvents{
			Event: &proto.ServerEvents_TypingState{
				TypingState: &proto.TypingState{
					UserId:   req.TypingState.UserId,
					IsTyping: req.TypingState.IsTyping,
				},
			},
		},
	}
	s.Hub.Broadcast <- event
}

func (s *Server) handleListUsers(conn proto.ChatService_ConnectServer, req *proto.ClientEvents_ListUsers, userId string) {
	users := s.Hub.ListConnectedUsers(userId)
	conn.Send(&proto.ServerEvents{
		Event: &proto.ServerEvents_Users{
			Users: &proto.Users{
				Users: users,
			},
		},
	})
}

func (s *Server) handleUserDisconnect(userId string, userName string) {
	s.Hub.UnRegister <- &userId
	event := &BroadcastedEvent{
		SenderId: userId,
		Event: &proto.ServerEvents{
			Event: &proto.ServerEvents_UserEvents{
				UserEvents: &proto.UserEvents{
					UserId: userId,
					Events: proto.UserEvents_left,
				},
			},
		},
	}
	s.Hub.Broadcast <- event
}

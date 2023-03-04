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
	clients map[string]proto.ChatService_ConnectServer
}

func NewServer() Server {
	return Server{
		clients: make(map[string]proto.ChatService_ConnectServer),
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
	s.clients[userId] = conn
	for {
		req, err := conn.Recv()
		if err != nil {
			fmt.Println("Error receiving request:", err)
			delete(s.clients, userId)
			return err
		}
		switch req := req.Event.(type) {
		case *proto.ClientEvents_JoinRequest:
			err = s.handleJoinRequest(conn, req, userId)
			if err != nil {
				delete(s.clients, userId)
				return err
			}
		case *proto.ClientEvents_ListUsers:
			// Do Something
		case *proto.ClientEvents_MessageRequest:
			// Do Something
		case *proto.ClientEvents_Typing_State:
			// Do Something
		}
	}
}

func (s *Server) handleJoinRequest(conn proto.ChatService_ConnectServer, req *proto.ClientEvents_JoinRequest, userId string) error {
	err := conn.Send(&proto.ServerEvents{
		Event: &proto.ServerEvents_JoinResponse{
			JoinResponse: &proto.JoinResponse{
				UserId:   userId,
				UserName: req.JoinRequest.UserName,
			},
		},
	})
	if err != nil {
		return err
	}
	return nil
}

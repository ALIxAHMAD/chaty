package grpc

import "chaty/grpc/proto"

type Client struct {
	Name    string
	Id      string
	Conn    proto.ChatService_ConnectServer
	Message chan *Message
}

type Message struct {
	SenderId string
	Event    *proto.ServerEvents
}

func (c *Client) sendMessage() {
	for {
		msg := <-c.Message
		if msg.SenderId == c.Id {
			continue
		}
		c.Conn.Send(msg.Event)
	}
}

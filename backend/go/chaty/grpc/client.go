package grpc

import "chaty/grpc/proto"

type Client struct {
	Name              string
	Id                string
	Conn              proto.ChatService_ConnectServer
	BroadcastedEvents chan *BroadcastedEvent
}

type BroadcastedEvent struct {
	SenderId string
	Event    *proto.ServerEvents
}

// Sends broadcasted events from other users to this user
func (c *Client) sendBroadcastedEvents() {
	for {
		select {
		case event := <-c.BroadcastedEvents:
			if event.SenderId == c.Id {
				continue
			}
			c.Conn.Send(event.Event)
		case <-c.Conn.Context().Done():
			return
		}
	}
}

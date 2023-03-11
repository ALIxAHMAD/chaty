package grpc

import (
	"chaty/grpc/proto"
	"fmt"
	"sync"
)

type Hub struct {
	sync.Mutex
	Clients    map[string]*Client
	Register   chan *Client
	UnRegister chan *string
	Broadcast  chan *Message
}

func NewHub() *Hub {
	return &Hub{
		Mutex:      sync.Mutex{},
		Clients:    make(map[string]*Client),
		Register:   make(chan *Client),
		UnRegister: make(chan *string),
		Broadcast:  make(chan *Message),
	}
}

func (h *Hub) Run() {
	fmt.Println("Hub running")
	for {
		select {
		case cl := <-h.Register:
			h.Lock()
			if _, ok := h.Clients[cl.Id]; !ok {
				h.Clients[cl.Id] = cl
			}
			h.Unlock()
		case id := <-h.UnRegister:
			h.Lock()
			delete(h.Clients, *id)
			h.Unlock()
		case m := <-h.Broadcast:
			h.Lock()
			for _, cl := range h.Clients {
				cl.Message <- m
			}
			h.Unlock()
		}
	}
}

func (h *Hub) ListConnectedUsers(userId string) []*proto.User {
	h.Lock()
	defer h.Unlock()
	users := []*proto.User{}
	for _, c := range h.Clients {
		if c.Id == userId {
			continue
		}
		users = append(users, &proto.User{
			UserId:   c.Id,
			UserName: c.Name,
		})
	}
	return users
}

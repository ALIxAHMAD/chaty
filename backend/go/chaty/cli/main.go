package main

import (
	"bufio"
	"chaty/grpc/proto"
	"context"
	"fmt"
	"log"
	"os"
	"strings"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

type user struct {
	name string
	// id     string
	// stream proto.ChatService_ConnectClient
}

func (u *user) getUserName() {

	reader := bufio.NewReader(os.Stdin)
	fmt.Printf("Your Name : ")
	name, err := reader.ReadString('\n')
	if err != nil {
		log.Fatalf(" Failed to read from console : %v", err)
	}
	u.name = strings.Trim(name, "\r\n")

}

func main() {
	port := "8080"

	conn := connectServer(":" + port)
	defer conn.Close()

	client := proto.NewChatServiceClient(&conn)
	user := user{}
	user.getUserName()

	stream, err := client.Connect(context.Background())
	if err != nil {
		log.Fatal(err)
	}
	stream.Send(&proto.ClientEvents{
		Event: &proto.ClientEvents_JoinRequest{
			JoinRequest: &proto.JoinRequest{
				UserName: user.name,
			},
		},
	})
	for {
		recv, err := stream.Recv()
		if err != nil {
			log.Fatal(err)
		}
		switch rec := recv.Event.(type) {
		case *proto.ServerEvents_JoinResponse:
			fmt.Println(rec.JoinResponse)
		}
	}
}

func connectServer(port string) grpc.ClientConn {
	conn, err := grpc.Dial(port, grpc.WithTransportCredentials(insecure.NewCredentials()))

	if err != nil {
		log.Fatalf("Failed to connect to gRPC server :: %v", err)
	}

	return *conn
}

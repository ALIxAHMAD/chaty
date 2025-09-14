package main

import (
	"chaty/grpc"
	"chaty/pkg/env"
	"log"
)

func main() {
	env.Load(".env")
	config, err := env.ParseConfig()
	if err != nil {
		log.Fatal(err)
	}
	hub := grpc.NewHub()
	go hub.Run()
	server := grpc.NewServer(hub)
	server.Serve(config.Port)
}

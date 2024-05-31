package main

import (
	"fmt"
	"log"
	"net/http"
)

const webPort = "80"

type Config struct {}

func main() {
	app := Config{}

	log.Printf("Starting broker API server on port %s\n", webPort)

	// define http server
	srv := &http.Server{
		Addr: fmt.Sprintf(":%s", webPort),
		Handler: app.routes(),
	}

	// start the server
	// TODO: listen and serve and handle errors
	
}
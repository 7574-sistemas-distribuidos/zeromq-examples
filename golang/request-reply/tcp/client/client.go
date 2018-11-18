//
//  Request-reply client.
//  Connects REQ socket to tcp://localhost:5559
//  Sends "Hello" to server, expects "World" back
//

package main

import (
	zmq "github.com/pebbe/zmq4"

	"fmt"
)

func main() {
	requester, _ := zmq.NewSocket(zmq.REQ)
	defer requester.Close()
	requester.Connect("tcp://server:5555")

	for request := 0; request < 10; request++ {
		fmt.Printf("Sending request: Hello")
		requester.Send("Hello", 0)
		reply, _ := requester.Recv(0)
		fmt.Printf("Received reply %d [%s]\n", request, reply)
	}
}

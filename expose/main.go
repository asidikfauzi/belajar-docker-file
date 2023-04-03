package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", HelloServer)

}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Println(w, "Hello World!")
}

package main

import (
	//"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("hello world!"))
	})

	http.ListenAndServe("0.0.0.0:8080", nil)
}

func hello() string {
	return "hello"
}

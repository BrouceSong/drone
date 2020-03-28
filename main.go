package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("start go api server!")
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("hello world!"))
	})

	http.ListenAndServe("0.0.0.0:8001", nil)
}

func hello() string {
	return "hello"
}

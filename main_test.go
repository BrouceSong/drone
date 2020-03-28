package main

import "testing"

func TestHello(t *testing.T) {
	if hello() != "hello" {
		t.Error("Testing error")
	}
}

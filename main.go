package main

import (
	"log"
	"runtime"
)

func main() {
	log.Println("Blocking by default")
	blockForever()
}

func blockForever() {
	for {
		runtime.Gosched()
	}
}

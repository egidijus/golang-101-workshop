package main

import (
    "log"
    "net/http"
)

func main() {
    fs := http.FileServer(http.Dir("slides"))
    http.Handle("/", fs)
    log.Fatal(http.ListenAndServe("127.0.0.1:8000", nil))
}

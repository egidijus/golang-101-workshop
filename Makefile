.PHONY: slides example

define data
package main

import (
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hi there, I love %s!", r.URL.Path[1:])
}

func main() {
    http.HandleFunc("/", handler)
    log.Fatal(http.ListenAndServe(":8080", nil))
}
endef
export data

slides:
	@echo "Now open http://localhost:8000"
	@go run slides/slides.go

example:
	@echo "$$data" > main.go
	@echo "Now edit main.go in your favorite editor"

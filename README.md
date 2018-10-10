# Go 101 workshop

Practical intro to Go programming language.

---

Everyone wants a web site, but did you know you can have a fully-fledged HTTP server in less than 20 lines of Go?

```go
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
```

## Requirements

Follow the steps below to install Go on your machine:

- Download binaries - [https://golang.org/dl/](https://golang.org/dl/)
- Follow the installation instructions - [https://golang.org/doc/install](https://golang.org/doc/install)

## Resources

 - the [official website](https://golang.org/doc/)
 - additionally, many developers just inspect Go source code. It's filled with explanations - for example the HTTP server [Serve](https://golang.org/src/net/http/server.go?s=74015:74064#L2411) method

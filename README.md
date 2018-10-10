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

## Start

Follow the steps below to install Go on your machine:

1. Download binaries - [https://golang.org/dl/](https://golang.org/dl/)
1. Follow the installation instructions - [https://golang.org/doc/install](https://golang.org/doc/install)
1. Run `make slides`
1. Open `http://localhost:8000` in your browser



## Resources

 - the [official website](https://golang.org/doc/)
 - additionally, many developers just inspect Go source code. It's filled with explanations - for example the HTTP server [Serve](https://golang.org/src/net/http/server.go?s=74015:74064#L2411) method

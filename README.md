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

## How to setup your workspace

Download binaries for your OS from [Go downloads](https://golang.org/dl/) page and then follow the steps below.

### macOS

Execute the file you just downloaded, and follow the prompts to install the Go tools. The package installs the Go distribution to `/usr/local/go`.

The package should put the `/usr/local/go/bin` directory in your `PATH` environment variable.

```sh
$ go version
go version go1.11 darwin/amd64
```

### Linux

First, download and install the binaries:

```sh
wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.11.1.linux-amd64.tar.gz
mkdir ~/go
```

Then add `/usr/local/go/bin` to the `PATH` environment variable. You can do this by adding this line to your `$HOME/.profile`:

```sh
export PATH=$PATH:/usr/local/go/bin
```

Then apply the changes:

```sh
source $HOME/.profile
```

## Slides

Just drag [slides.html](/slides.html) into your browser window!

## Other resources

 - the [official website](https://golang.org/doc/)
 - additionally, many developers just inspect Go source code. It's filled with explanations - for example the HTTP server [Serve](https://golang.org/src/net/http/server.go?s=74015:74064#L2411) method

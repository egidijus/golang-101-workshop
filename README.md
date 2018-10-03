# Golang 101 workshop





## golang installation linux
##  download
```
wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.11.linux-amd64.tar.gz
mkdir ~/go
```

## set paths
add these paths to your bash/zsh profile

```
export GOPATH=/home/$USER/go
export GOROOT=/usr/local/go
export GOBIN=/home/$USER/go/bin/
```
after you reload your terminal profile, you should be able to fetch go packages using go.
```
go get golang.org/x/tools/cmd/goimports
```

# go package management

# where to GO for documentation

# tips for workflow

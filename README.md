# dot go micro broker
Microservices with Go at the dot conf

## Branches
- Start with: `git checkout step1-setup-start`
- then `step1-setup-solution`

## Steps on the step1-setup-start branch
Be sure you are on your workspace on the outer broker folder, which is the root of this project
- Initialize the module: `go mod init broker` or `go mod init github.com/<username>/<projec>`
- Create the folder `cmd/api` and inside create the file `main.go`
- inside, simply add 
`package main`
`func main() {}`
- Install router packages:
    - go get github.com/go-chi/chi/v5/
    - go get github.com/go-chi/chi/v5/middleware
    - go get github.com/go-chi/cors
- In main.go try to understand the code and fix the TODO comment
- also in handlers.go


## How to start the service
`go run ./cmd/api`
FROM golang:1.16.6-alpine as builder

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN go build -o main .

# FROM alpine

# COPY --from=builder /app/main /app/main

CMD ["/app/main"]
# FROM golang:1.20.6-alpine 
# # as builder
# RUN mkdir /app
# ADD . /app
# WORKDIR /app

# COPY go.mod .
# COPY go.sum .

# RUN go mod download

# COPY . .

# RUN go build -o main .

# # FROM alpine

# # COPY /app/main /app/main

# CMD ["/app/main"]


# Gomicro-Greeter Service

# Get Go Micro and Protogen Micro
```
go get github.com/micro/micro
go get github.com/micro/protoc-gen-micro
```


This is the Gomicro-Greeter service

Generated with

```
micro new github.com/surenraju/gomicro-greeter --namespace=go.micro --type=srv
```

## Getting Started

- [Configuration](#configuration)
- [Dependencies](#dependencies)
- [Usage](#usage)

## Configuration

- FQDN: go.micro.srv.gomicro-greeter
- Type: srv
- Alias: gomicro-greeter

## Dependencies

Micro services depend on service discovery. The default is multicast DNS, a zeroconf system.

In the event you need a resilient multi-host setup we recommend consul.

#Run Consul
```
consul agent --dev
```

Pass ```--registry=consul``` or set the env var ```MICRO_REGISTRY=consul``` for any command


## Usage

A Makefile is included for convenience

Build the binary

```
make build
```

Run the service
```
./gomicro-greeter-srv
```

Build a docker image
```
make docker
```
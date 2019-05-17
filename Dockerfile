FROM alpine
ADD gomicro-greeter-srv /gomicro-greeter-srv
ENTRYPOINT [ "/gomicro-greeter-srv" ]

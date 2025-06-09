FROM ubuntu:latest AS build

RUN apt-get update && apt-get install -y build-essential
WORKDIR /app
COPY app/src/main.c . 
RUN gcc -o cmd_chess main.c -static

FROM scratch
COPY --from=build /app/cmd_chess /cmd_chess
CMD ["/cmd_chess"]

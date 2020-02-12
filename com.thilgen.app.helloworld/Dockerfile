FROM com.thilgen.toolchain.cpp:0.0.1 AS build

WORKDIR /src

COPY makefile main.cpp ./

RUN make

FROM ubuntu:bionic

WORKDIR /opt/helloworld

COPY --from=build /src/helloworld ./

CMD ["./helloworld"]
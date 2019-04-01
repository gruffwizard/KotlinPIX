FROM gwiz/konan-raspberrypi:latest as host
COPY hello.kt .
RUN  konanc hello.kt -o hello -target raspberrypi

FROM gwiz/konan-raspberrypi-runtime:latest as pi
COPY --from=host hello.kexe hello
RUN ./hello

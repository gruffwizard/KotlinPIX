FROM gwiz/konan-pi-xc:latest as compiler

COPY hello.kt .

# build hello world for raspberry pi (note it does not work on this linux arch)

RUN  konanc hello.kt -o hello -target raspberrypi -l libPCA9685

# against the raspberry pi image

FROM gwiz/konan-pi-rt:latest as pi

COPY --from=compiler hello.kexe  /hello_i2c

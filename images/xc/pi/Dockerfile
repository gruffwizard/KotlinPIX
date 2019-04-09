#
# Dockerfile to build the base kotlin native setup with raspberrypi target libraries
#
FROM  gwiz/konan-pi-rt:latest as pi-base

FROM gwiz/konan-x86-xc:latest as xc-base

# run compile to pull down required dependencies  (clears the downloaded cache)

COPY hello.kt .

RUN konanc hello.kt -o hello -target raspberrypi && \
    rm -rf /root/.konan/cache

# copy in the native libs from the pi image and build the klibs

COPY --from=pi-base /usr/include  /pi/headers
COPY --from=pi-base /usr/local/include  /pi/headers
COPY --from=pi-base /lib/libPCA9685.so  /pi/libs/libPCA9685.so

COPY defs /pi/defs

# create the klibs

RUN cinterop -def /pi/defs/pca9685.def -target raspberrypi -o libPCA9685 -compilerOpts -I/pi/headers
RUN klib contents libPCA9685.klib


FROM gwiz/konan-x86-xc:latest as image
COPY --from=xc-base root/.konan/dependencies  /root/.konan/dependencies
COPY --from=xc-base libPCA9685.klib           /root/.konan/klib/libPCA9685.klib
COPY --from=pi-base /lib/libPCA9685.so        /root/.konan/pi/lib/libPCA9685.so

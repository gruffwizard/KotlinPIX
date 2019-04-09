#
# Dockerfile to build  a simple base image with emulator for running on x86
# With basic set of interesting libraries and klibs

# px-xc is the linux x86 cross compiler for pi targets which contains the klibs
FROM gwiz/konan-pi-xc:latest as pi-xc

# create a clean arm image with the requisite runtimes.

FROM gwiz/konan-pi-base:latest as image
COPY --from=pi-xc /pi/lib/libPCA9685.so        /root/.konan/pi/lib/libPCA9685.so

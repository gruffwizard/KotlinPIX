#
# Dockerfile to build  a raspberry base image with QEMU emulator for running on x86
# Includes basic set of interesting 'pi' libraries and klibs
#

FROM balenalib/rpi-raspbian as source

# Update and install the pca i2c library dependencies
RUN apt-get update && apt-get install --no-install-recommends -y build-essential git cmake

# checkout pca library and build it

RUN git clone https://github.com/edlins/libPCA9685.git

RUN  cd libPCA9685 && \
     mkdir build && \
     cd build && \
     cmake .. && \
     make && \
     make install

#
# create a clean arm image with the requisite runtimes.
#

FROM balenalib/rpi-raspbian as base

# copy in build PCA library etc

COPY --from=source /usr/local/lib/libPCA9685.so   /lib/libPCA9685.so
COPY --from=source /usr/local/include/PCA9685.h   /usr/local/include/PCA9685.h

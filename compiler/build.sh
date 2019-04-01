#!/bin/bash

docker build   -t gwiz/konan-base:1.3.11  \
               -t gwiz/konan-base:latest \
               -t gwiz/konan-x86:1.3.11 \
               -t gwiz/konan-x86:latest \
               ./x86

docker build    -t gwiz/konan-arm32:1.3.11  \
                -t gwiz/konan-arm32:latest \
                -t gwiz/konan-raspberrypi:1.3.11 \
                -t gwiz/konan-raspberrypi:latest \
                ./raspberrypi

#docker build   -t gwiz/konan-base:1.3.11  -t gwiz/konan-base:latest ./linuxX86

#docker build -f KonanLinuxX86Dockerfile -t gwiz/konan-linux86:1.3.11 -t gwiz/konan-linux86:latest .

#for target in linux_arm32_hfp linux_mips32 linux_mipsel32 android_arm32 android_arm64 wasm32 zephyr_stm32f4_disco
#do
#   docker -f KonanTargetDockerfile build --build-arg target=$target -t gwiz/konanc-$target:1.3.11 -t gwiz/konanc-$target:latest .
#done


#docker build -t gwiz/arm32v7base:1.3.11    -t gwiz/arm32v7base:latest ./arm32v7-base
#docker build -t gwiz/konanc-arm32v7:1.3.11 -t gwiz/konanc-arm32v7:latest ./konanc-arm32v7




#docker build -t gruffwizard/kotlinpixhost:1.3.11  ./host
#docker tag gruffwizard/kotlinpixhost:1.3.11  gruffwizard/kotlinpixhost:latest

#docker build -t gruffwizard/kotlinpixpi:1.3.11 ./target
#docker tag      gruffwizard/kotlinpixpi:1.3.11  gruffwizard/kotlinpixpi:latest

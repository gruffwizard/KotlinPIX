#
# Dockerfile to build the base kotlin native setup
# This image installs the compiler and the dependencies for the default linux x86 target
# Dependencies are downloaded and installed by driving a sample compile

FROM openjdk:8-jdk-slim-stretch as installer

RUN apt-get update
RUN apt-get install -y --no-install-recommends wget libncurses5

# download and install latest kotlin native binary for linux

RUN wget --quiet https://github.com/JetBrains/kotlin/releases/download/v1.3.11/kotlin-native-linux-1.3.11.tar.gz

RUN tar -zxf  kotlin-native-linux-1.3.11.tar.gz

RUN mv kotlin-native-linux-1.3.11  kotlin-native

ENV PATH=/kotlin-native/bin:$PATH

#  copy in sample

COPY hello.kt .

# compile using default target (downloads required dependencies)

RUN konanc hello.kt -o helloworld

# prove it works
RUN ./helloworld.kexe

#
# base image for actual use
#

FROM openjdk:8-jdk-slim-stretch as base
COPY --from=installer /kotlin-native /kotlin-native
ENV PATH=/kotlin-native/bin:$PATH
RUN mkdir -p /root/.konan/
COPY --from=installer /root/.konan/dependencies /root/.konan/dependencies

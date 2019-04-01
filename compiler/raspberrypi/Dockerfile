#
# Dockerfile to build the base kotlin native setup with arm32v7 target libraries
# included.

FROM gwiz/konan-base:latest

# run compile to pull down required dependencies  (clears the downloaded cache)

COPY hello.kt .

RUN konanc hello.kt -o hello -target linux_arm32_hfp && \
    rm -rf /root/.konan/cache

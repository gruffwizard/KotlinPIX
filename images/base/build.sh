echo "Building docker image Raspberry PI base"
docker build   -t gwiz/konan-pi-base:1.3.11  \
               -t gwiz/konan-pi-base:latest \
               ./pi

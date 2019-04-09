echo "Building docker image Raspberry PI runtime"
docker build   -t gwiz/konan-pi-rt:1.3.11  \
               -t gwiz/konan-pi-rt:latest \
               ./pi

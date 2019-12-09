# intel-edison-cross-compiler-docker

##Usage:
```
docker build -t edison-cross-compile .
docker run -v $PWD:/opt/app -it hyperion-gateway-edison bash
```
## Building
```
source /opt/poky-edison/1.7.2/environment-setup-core2-32-poky-linux
mkdir -p build
cd build
cmake ..
make
```

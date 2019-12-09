FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:mraa/mraa
RUN apt-get update -y
RUN apt-get install -y cmake bzip2 git
RUN apt-get install -y wget unzip

#RUN apt-get install -y libmraa2 libmraa-dev libmraa-java python-mraa python3-mraa node-mraa mraa-tools
RUN wget http://downloadmirror.intel.com/25028/eng/edison-sdk-linux64-ww25.5-15.zip
RUN unzip edison-sdk-linux64-ww25.5-15.zip  
RUN apt-get install -y python-dev python
RUN ./poky-edison-glibc-x86_64-edison-image-core2-32-toolchain-1.7.2.sh -y
RUN git clone https://github.com/intel-iot-devkit/mraa.git
RUN cp -r ./mraa/api/mraa* /opt/poky-edison/1.7.2/sysroots/core2-32-poky-linux/usr/include/ && rm -r /mraa


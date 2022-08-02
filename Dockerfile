FROM ubuntu:latest
RUN apt-get update
RUN apt-get -qy install wget unzip curl bash nano sshfs
RUN wget --content-disposition https://ngc.nvidia.com/downloads/ngccli_arm64.zip && unzip ngccli_arm64.zip && chmod u+x ngc-cli/ngc
RUN echo "export PATH=\"\$PATH:$(pwd)/ngc-cli\"" >> ~/.bashrc
WORKDIR /root
RUN mkdir /root/.ngc
ADD config /root/.ngc/
RUN mkdir /root/mount

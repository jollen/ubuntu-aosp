FROM ubuntu:12.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update
RUN apt-get install -y build-essential g++-multilib
RUN apt-get install -y file git gnupg flex bison gperf zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev mingw32 tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 openjdk-6-jdk openjdk-6-jre sudo

WORKDIR /var/aosp

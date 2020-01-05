FROM ubuntu:16.04

ENV TZ=Asia/Taipei

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y curl sudo python2.7 python-dev git libssl-dev libffi-dev build-essential ruby binwalk

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py

ADD setup.sh /setup.sh

RUN /setup.sh

WORKDIR /home/ctf/

USER ctf

CMD ["/bin/bash"]
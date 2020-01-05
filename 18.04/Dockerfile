FROM ubuntu:18.04

ENV TZ=Asia/Taipei

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt -qq update && apt -qq install -y curl sudo python2.7 python-dev git libssl-dev libffi-dev build-essential ruby binwalk

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py

COPY setup.sh /setup.sh

RUN chmod +x /setup.sh && /setup.sh

RUN useradd -m ctf && echo "ctf ALL=NOPASSWD: ALL" > /etc/sudoers.d/ctf

WORKDIR /home/ctf/

USER ctf

CMD ["/bin/bash"]
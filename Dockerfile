FROM debian:11
RUN apt update && apt -y install git build-essential
RUN mkdir /cc65_build
WORKDIR /cc65_build
RUN git clone https://github.com/cc65/cc65.git
WORKDIR /cc65_build/cc65
RUN make
#CMD ['tail','-f','/var/log/cron.log']
ENTRYPOINT ["tail", "-f", "/dev/null"]
FROM debian:11
RUN apt update && apt -y install git build-essential
RUN mkdir /nesasm_build
WORKDIR /nesasm_build
RUN git clone https://github.com/camsaul/nesasm.git
WORKDIR /nesasm_build/nesasm/source
RUN make && make install
RUN mkdir /cc65_build
WORKDIR /cc65_build
RUN git clone https://github.com/cc65/cc65.git
WORKDIR /cc65_build/cc65
RUN make
#CMD ['tail','-f','/var/log/cron.log']
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/cc65_build/cc65/bin
ENTRYPOINT ["tail", "-f", "/dev/null"]
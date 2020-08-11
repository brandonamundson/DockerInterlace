FROM ubuntu:latest
MAINTAINER Rod Chubb <rodchubb@uat.edu> Cord <corruzew@uat.edu> Brandon <braamund@uat.edu>

COPY Interlace /Interlace/
COPY ./command.sh /

RUN  apt-get update -y \
  && apt-get install nmap python3 nikto python3-setuptools ca-certificates -y

RUN cd Interlace; python3 setup.py install

ENTRYPOINT ["/command.sh"]

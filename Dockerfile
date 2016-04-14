FROM centos:7.1.1503
MAINTAINER Chakradhar Rao Jonagam <9chakri@gmail.com> 

RUN yum -y update; yum clean all
RUN curl --silent --location https://rpm.nodesource.com/setup_0.10 | bash -
RUN yum -y install nodejs; yum clean all
RUN yum install gcc-c++ openssl-devel make; yum clean all
RUN npm install -g node-gyp
ADD ./package.json /opt/app-root/src/
WORKDIR /opt/app-root/src
RUN npm install
ADD . /opt/app-root/src
RUN chmod -R 755 /opt/app-root/src
ADD oc /usr/local/bin/

EXPOSE 8080
CMD ["npm","start"]

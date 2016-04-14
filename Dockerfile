FROM    centos:centos6
MAINTAINER Chakradhar Rao Jonagam <9chakri@gmail.com>
 
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN curl --silent --location https://rpm.nodesource.com/setup_0.10 | bash -
RUN yum install -y gcc-c++ make
RUN yum -y install nodejs
ADD ./package.json /opt/app-root/
WORKDIR /opt/app-root
RUN npm install
ADD . /opt/app-root/
ADD oc /usr/local/bin/

EXPOSE 8080
CMD ["npm","start"]

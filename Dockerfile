FROM node:0.10
ADD . /opt/app-root/src
RUN chmod -R 755 /opt/app-root/src
WORKDIR /opt/app-root/src
RUN npm install
ADD oc /usr/local/bin/

EXPOSE 8080
CMD ["npm","start"]

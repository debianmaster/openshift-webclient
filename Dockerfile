FROM node:0.10
ADD . /opt/app-root/src
RUN chmod -R 755 /opt/app-root/src
WORKDIR /opt/app-root/src
RUN npm install
ADD oc /usr/local/bin/
RUN mkdir -p /.kube && chmod -R 777 /.kube
EXPOSE 8080
CMD ["npm","start"]

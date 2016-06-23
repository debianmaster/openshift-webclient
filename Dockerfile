FROM node:4.0.0
COPY package.json  /opt/app-root/src/
WORKDIR /opt/app-root/src
RUN chmod -R 755 /opt/app-root/src
RUN chown -R 1001:1001 /opt/app-root/src
RUN npm install
ADD . /opt/app-root/src
USER 1001
ADD oc /usr/local/bin/
RUN touch .kube && chmod -R 777 .kube
ENV KUBECONFIG=~/.kube
RUN mv /opt/app-root/src/ROOT.war ~/ROOT.war
EXPOSE 8080
CMD ["npm","start"]

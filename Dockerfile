FROM node:4.0.0
COPY package.json  /opt/app-root/src/
WORKDIR /opt/app-root/src
RUN chmod -R 755 /opt/app-root/src
RUN useradd 1001 && chown -R 1001:1001 /opt/app-root/src
RUN npm install
ADD . /opt/app-root/src
ADD oc /usr/local/bin/
RUN touch .kube && chmod -R 777 .kube
USER 1001
ENV KUBECONFIG=/opt/app-root/src/.kube
EXPOSE 8080
CMD ["npm","start"]

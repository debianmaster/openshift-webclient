FROM node:4.0.0
COPY package.json  /opt/app-root/src/
WORKDIR /opt/app-root/src
RUN chmod -R 755 /opt/app-root/src
RUN chown -R 1001:1001 /opt/app-root/src 
RUN useradd -M 1001
RUN npm install
ADD . /opt/app-root/src
ADD oc /usr/local/bin/
RUN touch .kube && chmod -R 777 .kube
ENV KUBECONFIG=/opt/app-root/src/.kube
ENV GIT_COMMITTER_NAME=1001
ENV GIT_COMMITTER_EMAIL=1001@example.com
USER 1001
EXPOSE 8080
CMD ["npm","start"]

FROM openshift/nodejs:latest
ADD . /opt/app-root/src
WORKDIR /opt/app-root/src
RUN npm install
ADD oc ~/bin/oc
CMD ["npm","start"]

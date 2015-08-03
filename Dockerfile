FROM golang:latest
RUN apt-get update
RUN apt-get --yes install nodejs
RUN apt-get --yes install npm
RUN npm install npm
RUN npm install -g gulp
RUN ln -s `which nodejs` /usr/bin/node
COPY ./ /src
WORKDIR /src/ui
RUN npm install
#CMD ["gulp", "-version"]
CMD ["npm" , "run" , "dev"]

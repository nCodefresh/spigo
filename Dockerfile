FROM golang:latest
RUN apt-get update
RUN apt-get --yes install nodejs
RUN apt-get --yes install npm
RUN npm install npm
RUN ln -s `which nodejs` /usr/bin/node
COPY ./ /src
WORKDIR /src/ui

CMD ["npm" , "run" , "dev"]

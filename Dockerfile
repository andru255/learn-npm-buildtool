FROM nodesource/node:latest


RUN mkdir /src
WORKDIR /src

ADD package.json package.json
RUN npm install


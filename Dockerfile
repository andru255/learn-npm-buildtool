# credits and amazing idea from:
# http://www.saulshanabrook.com/npm-docker-sharing-volumes/
FROM nodesource/node:latest

# to properly install node-gyp package
ENV USER root

RUN mkdir -p /vendor/
ENV PATH /vendor/node_modules/.bin/:$PATH
ENV NODE_PATH /vendor/node_modules/

COPY ./package.json /vendor/package.json
WORKDIR /vendor/
RUN npm install --only=dev

WORKDIR /src/
COPY . /src/

CMD ["npm"]

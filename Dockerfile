FROM nodesource/node:latest

RUN mkdir /src

WORKDIR /src

ADD package.json package.json

RUN echo "start installing packages"
RUN npm install --only=dev
RUN echo "end installing packages"

VOLUME /src

ONBUILD ADD . /src

CMD ["npm"]

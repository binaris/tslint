FROM node:8

RUN mkdir -p /opt/tslint
WORKDIR /opt/tslint

RUN npm i tslint typescript
ENTRYPOINT ["/opt/tslint/node_modules/.bin/tslint"]

VOLUME /src
WORKDIR /src

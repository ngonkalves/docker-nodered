ARG NODERED_VERSION

ARG GIT_HASH

ARG GIT_BRANCH

FROM nodered/node-red:${NODERED_VERSION}-minimal

MAINTAINER Nuno Goncalves <@ngonkalves>

RUN npm install -no-cache node-red-contrib-home-assistant-websocket && \
    npm install -no-cache node-red-contrib-telegrambot && \
    npm install -no-cache node-red-contrib-influxdb && \
    npm install -no-cache node-red-contrib-bigtimer && \
    npm install -no-cache node-red-dashboard

# set version label
LABEL maintainer="https://github.com/ngonkalves" \
    project="https://github.com/ngonkalves/docker-nodered" \
    nodered-version="${NODERED_VERSION}"
    git-branch="${GIT_BRANCH}" \
    git-hash="${GIT_HASH}"

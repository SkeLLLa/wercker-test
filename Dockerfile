FROM mhart/alpine-node:latest
RUN apk add --no-cache libc6-compat dumb-init

ENV NODE_ENV production
ENV SVC_PATH /opt/service

WORKDIR $SVC_PATH
COPY . $SVC_PATH

EXPOSE 9000

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["node", "index.js"]

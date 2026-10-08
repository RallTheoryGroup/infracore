FROM node:22-alpine
RUN rm -rf /usr/local/lib/node_modules /opt/yarn-* \
  /usr/local/bin/np* /usr/local/bin/corepack /usr/local/bin/yarn*
USER node
CMD ["node", "--version"]

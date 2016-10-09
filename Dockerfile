FROM mhart/alpine-node:6.7

RUN npm install --save markdown-toc --global

ENTRYPOINT ["/usr/bin/markdown-toc"]

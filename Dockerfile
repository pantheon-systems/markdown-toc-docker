FROM mhart/alpine-node:6.7
# NOTE: the "official" node images are pretty big. node:6.7 is 650MB and node:6.7-slim is about 200MB.
#       Thus, we are using mhart/alpine-node which is not official but tracks closely to the official node
#       images and makes the same tags available. It is ~50MB base size:
#
#       node                               6.7-slim            4d8411ec1363        12 days ago         210.3 MB
#       node                               6.7                 9873603dc506        12 days ago         653.9 MB
#       mhart/alpine-node                  6.7                 2d33f8ab1975        12 days ago         49.05 MB

RUN npm install --save markdown-toc --global

ENTRYPOINT ["/usr/bin/markdown-toc"]

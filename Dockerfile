FROM node:latest

ADD /entrypoint.sh /entrypoint.sh
RUN chmod +rwx /entrypoint.sh

ADD /action /action
RUN chmod +rwx /action
RUN chmod +rwx /action/index.js

RUN ls -la ~
RUN ls -la /action
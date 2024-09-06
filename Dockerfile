FROM node:latest

ADD /entrypoint.sh ${GITHUB_ACTION_PATH}/entrypoint.sh
RUN chmod +rwx ${GITHUB_ACTION_PATH}/entrypoint.sh

ADD /action ${GITHUB_ACTION_PATH}
RUN chmod +rwx ${GITHUB_ACTION_PATH}/index.js

RUN echo ${GITHUB_ACTION_PATH}
RUN ls -la ${GITHUB_ACTION_PATH}
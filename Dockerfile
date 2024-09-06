FROM node:latest

RUN echo ${GITHUB_ACTION_PATH}
RUN ls -la ${GITHUB_ACTION_PATH}

ADD /entrypoint.sh ${GITHUB_ACTION_PATH}/entrypoint.sh
ADD /action ${GITHUB_ACTION_PATH}
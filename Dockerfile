FROM node:latest

# 1. ADD 'entrypoint.sh' script to the Docker container
# 2. Change mode to the executable for 'entrypoint.sh'
# 3. List the directory
ADD entrypoint.sh /entrypoint.sh
RUN chmod +rwx entrypoint.sh
RUN ls -la

RUN cat /entrypoint.sh

# 1. ADD 'action' directory to the Docker container
# 2. Change mode to the executable for 'action' directory
# 3. Change mode to the executable for 'index.js' file
# 4. List the directory
# 5. List the 'action' directory
ADD /action /action
RUN chmod +rwx /action
RUN chmod +rwx /action/index.js
RUN ls -la /action

RUN cat /entrypoint.sh

# 1. RUN 'entrypoint.sh' script
ENTRYPOINT ["/entrypoint.sh"]
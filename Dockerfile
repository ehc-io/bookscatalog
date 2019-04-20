FROM ubuntu:18.04

# Install Mongodb Tools
WORKDIR /loopback-folder

RUN apt-get update
RUN apt-get install -y mongo-tools mongodb-clients

# Copy app files
COPY loopback-folder /loopback-folder
COPY dataset /loopback-folder/dataset
COPY scripts /loopback-folder/scripts
RUN apt-get install -y nodejs npm
RUN npm install -g loopback-cli
#
# EXPOSE 3000

# Wait Mongo to stat before running the bootstrap scripts which imports dataset into database
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /loopback-folder
RUN chmod +x ./wait

## Launching
CMD ./wait && scripts/bootstrap.sh && node server/server.js
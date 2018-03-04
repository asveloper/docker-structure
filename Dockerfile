FROM node:latest

# set working directory
RUN mkdir /usr/src/server
WORKDIR /usr/src/server

# add `/usr/src/erver/node_modules/.bin` to $PATH
ENV PATH /usr/src/server/node_modules/.bin:$PATH

# install and cache app dependencies
ADD package.json /usr/src/server/package.json
RUN npm install

EXPOSE 4000

# start app
CMD ["npm", "start"]

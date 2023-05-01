FROM node:alpine

WORKDIR /app
# set working directory
# add `/app/node_modules/.bin` to $PATH
ENV PATH /node_modules/.bin:$PATH

# install app dependencies
COPY package.json .

RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . .

EXPOSE 3000
# start app
CMD ["npm", "start"]
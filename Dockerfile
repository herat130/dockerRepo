#  build docker image of an application

# command
#  docker build --tag reactApp .

FROM node:15.13-alpine
WORKDIR /my-app
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm run build

# when container starts it will execute below command
# create / start container with below command and tagged image

# command
# docker run --publish 3000:3000 reactApp
CMD ["npm", "start"]  
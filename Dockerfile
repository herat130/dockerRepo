# docker build -t heratdhruv/my-react-app .
FROM node:15.13-alpine
WORKDIR /my-app
COPY package.json .
RUN npm install
COPY . .
CMD ["npm","start"]
FROM node:16-alpine 
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "babel-node", "index.js" ]
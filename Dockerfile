FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

# Install packages or Copy source code
RUN npm install

# Copy app source code to container
COPY . .

ENV PORT=8080
EXPOSE 8080

CMD [ "node", "app.js" ]
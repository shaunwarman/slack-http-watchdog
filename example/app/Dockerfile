FROM mhart/alpine-node:10

WORKDIR /app

COPY package*.json /app/
RUN npm install --production

COPY . /app/

CMD node /app/app.js

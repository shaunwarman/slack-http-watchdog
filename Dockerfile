FROM mhart/alpine-node:10

WORKDIR /app

COPY package*.json /app/
RUN npm install --production

COPY bin /app/bin/
RUN chmod +x /app/bin/watch \
    && npm ls http-watchdog

CMD ["/app/bin/watch"]

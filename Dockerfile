FROM node:lts-slim
RUN npm install http-server && mkdir /app
COPY web_server.js /app
EXPOSE 9000
WORKDIR /app
CMD "node web_server.js"

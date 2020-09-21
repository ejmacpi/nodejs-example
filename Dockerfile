FROM node:lts-slim
RUN npm install http-server && mkdir /app /app/share
COPY web_server.js /app
EXPOSE 9002
WORKDIR /app
CMD /usr/local/bin/node /app/web_server.js

FROM node:18
WORKDIR /app
COPY server ./server
COPY client ./client
WORKDIR /app/server
RUN npm install 
WORKDIR /app/client 
RUN npm install
RUN npm run build
WORKDIR /app/server
EXPOSE 5000
CMD ["node", "server.js"]

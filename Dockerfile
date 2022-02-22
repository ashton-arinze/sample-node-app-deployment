FROM node:12.18.1
ENV NODE_ENV=production 
ENV PORT=5551
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production

#RUN npm start
COPY . .
EXPOSE $PORT
CMD [ "node", "server.js" ]
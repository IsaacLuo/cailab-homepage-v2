FROM node:alpine
WORKDIR /app
ADD ./package.json ./yarn* ./
RUN yarn install
ADD . .
EXPOSE 3030
VOLUME /app/db
CMD ["yarn","start"]

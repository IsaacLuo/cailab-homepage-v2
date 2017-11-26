FROM node:carbon
RUN npm install -g forever
WORKDIR /app
ADD package*.json ./
RUN npm install
ADD . .
EXPOSE 3000
RUN npm run build
CMD ["sh", "./start_prod.sh"]

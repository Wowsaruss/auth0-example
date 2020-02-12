FROM node:10-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json .

RUN npm install --production

COPY . .

EXPOSE 3456

CMD ["node", "bin/www"]
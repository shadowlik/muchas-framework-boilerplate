FROM node:12-alpine

#App
WORKDIR /app

COPY . .

RUN npm i

RUN npm run build

EXPOSE 6328

CMD [ "npm", "run", "start" ]
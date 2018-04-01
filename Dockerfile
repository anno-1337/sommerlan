FROM node:alpine

RUN npm install elm

EXPOSE 3000

CMD [ "npm", "start"]
FROM node:16-alpine


WORKDIR /

COPY package.json package-lock.json tsconfig.json ./

RUN npm install 

RUN npm i -D @types/node@latest

RUN npm i -g typescript

COPY . .

RUN tsc


EXPOSE 3000

CMD npm start

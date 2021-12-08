FROM node:16-alpine

ENV HOST 0.0.0.0
ENV PORT 3000

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build
EXPOSE 3000

CMD [ "npm", "run", "start" ]
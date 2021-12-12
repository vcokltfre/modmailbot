FROM node:14

WORKDIR /bot

COPY package.json /bot
COPY package-lock.json /bot

RUN npm ci

COPY . /bot

CMD ["npm", "run", "start"]

# build
FROM node:16.13.2-alpine

WORKDIR /frontend
COPY package.json .
RUN	npm install

# start
CMD ["npm", "run", "dev"]
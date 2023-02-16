FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME mob
ENV MONGODB_CLUSTER_ADDRESS cluster0.hhpzkmr.mongodb.net
ENV MONGODB_USERNAME MongoBeast
ENV MONGODB_PASSWORD Unlimted1234

WORKDIR /app

COPY package*.json .
RUN npm install

COPY ..

CMD ["npm","start"]
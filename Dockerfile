FROM node:18.20.1-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade &&\
    apt install -y zlib-1.3.dfsg-3
EXPOSE  4000
CMD node graphserver.js

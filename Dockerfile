FROM node:lts-alpine
MAINTAINER xiangzai  whistle后台

COPY . /downloads
WORKDIR /downloads

#ADD rootCA  ~/.WhistleAppData/custom_certs/

RUN npm install -g whistle


EXPOSE 8899

CMD ["whistle", "run", "--port", "8899" , "--certDir", "./rootCA/"]
FROM node:lts-alpine
MAINTAINER luying3@staff.sina.com.cn  whistle后台多端口开放8899 9988 7788 8877 7799 6688 6677 7766基于pm2 绑定域名版本

#COPY . /downloads
COPY ./rootCA /downloads/rootCA
#COPY ./node_modules /downloads/node_modules

WORKDIR /downloads

COPY ./rootCA  ~/.WhistleAppData/custom_certs/

#RUN cp -r ./rootCA ~/.WhistleAppData/custom_certs/

RUN npm install -g whistle
RUN npm install -g pm2



EXPOSE 8899
EXPOSE 9988
EXPOSE 7788
EXPOSE 8877
EXPOSE 7799
EXPOSE 6688
EXPOSE 6677
EXPOSE 7766
EXPOSE 7711
EXPOSE 7722
EXPOSE 7755



#ENV WHISTLE_PATH=/mockdata/whistle
ENTRYPOINT PM2_HOME='.pm6' pm2-runtime "whistle run --port 8899 --certDir ./rootCA/ --baseDir /mockdata/whistle/8899 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="8899" & \
           PM2_HOME='.pm2' pm2-runtime "whistle run --port 9988 --certDir ./rootCA/ --baseDir /mockdata/whistle/9988 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="9988" & \
           PM2_HOME='.pm3' pm2-runtime "whistle run --port 7788 --certDir ./rootCA/ --baseDir /mockdata/whistle/7788 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7788" & \
           PM2_HOME='.pm4' pm2-runtime "whistle run --port 8877 --certDir ./rootCA/ --baseDir /mockdata/whistle/8877 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="8877" & \
           PM2_HOME='.pm5' pm2-runtime "whistle run --port 7799 --certDir ./rootCA/ --baseDir /mockdata/whistle/7799 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7799" & \
           PM2_HOME='.pm7' pm2-runtime "whistle run --port 6688 --certDir ./rootCA/ --baseDir /mockdata/whistle/6688 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6688" & \
           PM2_HOME='.pm8' pm2-runtime "whistle run --port 6677 --certDir ./rootCA/ --baseDir /mockdata/whistle/6677 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6677" & \
           PM2_HOME='.pm9' pm2-runtime "whistle run --port 7766 --certDir ./rootCA/ --baseDir /mockdata/whistle/7766 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7766" & \
           PM2_HOME='.pm10' pm2-runtime "whistle run --port 7711 --certDir ./rootCA/ --baseDir /mockdata/whistle/7711 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7711" & \
           PM2_HOME='.pm11' pm2-runtime "whistle run --port 7722 --certDir ./rootCA/ --baseDir /mockdata/whistle/7722 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7722" & \
           PM2_HOME='.pm12' pm2-runtime "whistle run --port 7755 --certDir ./rootCA/ --baseDir /mockdata/whistle/7755 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7755"
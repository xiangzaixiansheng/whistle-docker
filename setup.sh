#!/bin/bash

#ENV WHISTLE_PATH=/mockdata/whistle
PM2_HOME='.pm6' pm2-runtime "whistle run --port 8899 --certDir ./rootCA/ --baseDir /mockdata/whistle/8899 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="8899" & \
PM2_HOME='.pm2' pm2-runtime "whistle run --port 9988 --certDir ./rootCA/ --baseDir /mockdata/whistle/9988 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="9988" & \
PM2_HOME='.pm3' pm2-runtime "whistle run --port 7788 --certDir ./rootCA/ --baseDir /mockdata/whistle/7788 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7788" & \
PM2_HOME='.pm4' pm2-runtime "whistle run --port 8877 --certDir ./rootCA/ --baseDir /mockdata/whistle/8877 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="8877" & \
PM2_HOME='.pm5' pm2-runtime "whistle run --port 7799 --certDir ./rootCA/ --baseDir /mockdata/whistle/7799 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7799" & \
PM2_HOME='.pm7' pm2-runtime "whistle run --port 6688 --certDir ./rootCA/ --baseDir /mockdata/whistle/6688 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6688" & \
PM2_HOME='.pm8' pm2-runtime "whistle run --port 6677 --certDir ./rootCA/ --baseDir /mockdata/whistle/6677 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6677" & \
PM2_HOME='.pm9' pm2-runtime "whistle run --port 7766 --certDir ./rootCA/ --baseDir /mockdata/whistle/7766 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="7766" & \
PM2_HOME='.pm10' pm2-runtime "whistle run --port 6611 --certDir ./rootCA/ --baseDir /mockdata/whistle/6611 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6611" & \
PM2_HOME='.pm11' pm2-runtime "whistle run --port 6622 --certDir ./rootCA/ --baseDir /mockdata/whistle/6622 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6622" & \
PM2_HOME='.pm12' pm2-runtime "whistle run --port 6633 --certDir ./rootCA/ --baseDir /mockdata/whistle/6633 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6633" & \
PM2_HOME='.pm13' pm2-runtime "whistle run --port 6644 --certDir ./rootCA/ --baseDir /mockdata/whistle/6644 --localUIHost whistle-dev.mfe.svc.nvsyf.k8.nevis.sina.com.cn" --name="6644"

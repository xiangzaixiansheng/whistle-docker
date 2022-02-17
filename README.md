# whistle-docker
whistle-docker

官方文档 http://wproxy.org/whistle/

### 一、docker打包命令

目前的话在mac上打包镜像（m1）芯片，需要注意打包命令


arch命令是Linux的基本命令，输出机器的体系结构

docker build --platform linux/x86_64 -t whistle-docker .

docker build  -t whistle-docker .



### 二、docker部署问题

因为每次重新部署docker的话 https的证书都会改变，影响体验。

http://wproxy.org/whistle/webui/https.html

文档介绍：

自定义请求证书或根证书

whistle会自动生成根证书，并根据根证书对每个请求动态生成https证书，如果需要用自定义的证书，甚至根证书，可以有两种方式(只支持 `.crt` 格式的证书)：

1. 把普通证书对 (如：`test.crt` 和 `test.key`、`test2.crt` 和 `test2.key` 等等) 或根证书 (名字必须为 `root.crt` 和 `root.key`)，放在系统的某个目录，如 `/data/ssl`，并在启动时添加启动参数 `w2 start -z /data/ssl` ，whistle会自动加里面的证书

2. (v1.14.8及以上版本支持) 把上述证书或根证书放在固定目录

    

   ```
   ~/.WhistleAppData/custom_certs/
   ```

   里面，whistle会自动加里面的证书

   > 优先级 `-z dir` > `~/.WhistleAppData/` > 内置证书



我们需要找到本机的证书位置

find . -name "rootCA.crt"

位置：**./downloads/~/.WhistleAppData/custom_certs/**

我们把对应的证书(root.crt 和 root.key) 拷贝出来 放在./rootCA里面即可。




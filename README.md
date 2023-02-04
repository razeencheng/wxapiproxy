# 企业微信代理

这是一个简单的 Docker 版本的企业微信 API 代理的 Dockerfile.

一个命令跑起来。

``` bash
docker run -d --name "wxapiproxy" \
	 -p "9080:80" \
	 --restart unless-stopped \
	 razeencheng/wxapiproxy
```
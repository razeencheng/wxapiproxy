
TAG=$(shell git describe --tags)

tag:
	echo $(TAG)

build:
	docker build -t razeencheng/wxapiproxy:$(TAG) .

push: build
	docker push razeencheng/wxapiproxy:$(TAG)
	docker tag razeencheng/wxapiproxy:$(TAG) razeencheng/wxapiproxy
	docker push razeencheng/wxapiproxy
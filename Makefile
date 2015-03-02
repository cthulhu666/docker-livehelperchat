PROJECT 	?= cthulhu666/docker-livehelperchat
TAG     	?= latest

ifdef REGISTRY
  IMAGE=$(REGISTRY)/$(PROJECT):$(TAG)
else
  IMAGE=$(PROJECT):$(TAG)
endif

build: Dockerfile
	docker build -t $(IMAGE) .


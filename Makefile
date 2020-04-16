DOCKER ?= docker

.NOTPARALLEL:
.PHONY: all 

all: cpu

cpu:
	$(DOCKER) pull ubuntu:16.04
	$(DOCKER) build -f Dockerfile.cpu -t qiutzh/miniconda_py36_nni_v15:cpu .
	$(DOCKER) tag qiutzh/miniconda_py36_nni_v15:cpu 172.16.8.20:5000/qiutzh/miniconda_py36_nni_v15:cpu
	$(DOCKER) push 172.16.8.20:5000/qiutzh/miniconda_py36_nni_v15:cpu

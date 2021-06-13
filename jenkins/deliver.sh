#!/bin/bash

echo ${dockerTag}

# 修改 deployment docker 镜像地址为此次编译打包的镜像
sed -i "s#{DOCKER_IMAGE}#${dockerTag}#" jenkins/k8s/deployment.yaml

# 部署至 kubernetes 集群中
kubectl apply -f jenkins/k8s/

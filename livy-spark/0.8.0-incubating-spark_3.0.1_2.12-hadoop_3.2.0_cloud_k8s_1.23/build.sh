#!/bin/sh

set -ex

DOCKERHUB_REPO=qwak.jfrog.io/qwak-docker
parent_dir_path=livy-spark

repo="$DOCKERHUB_REPO/${parent_dir_path##*/}"
tag=0.8.0-incubating-spark_3.0.1_2.12-hadoop_3.2.0_cloud_k8s_1.23

docker build . -t "${repo}:${tag}"
echo "Done! Enjoy..."

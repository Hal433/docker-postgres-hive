#!/bin/bash

echo -e "Building Postgres metastore for Hive docker image..."

function build_img() {
  local prefix=$1
  local imgname=$2
  local img="${prefix}/${imgname}"

  echo -e "Building docker image ${img}..."
  docker build -t $img .
}

IMGPREFIX=hal433
build_img $IMGPREFIX docker-postgres-hive

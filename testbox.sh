#!/bin/bash
# testbox - Docker 测试环境快速入口
# 用法: testbox [目录]

WORKDIR="$${1:-$$(pwd)}"
docker run --rm -it \
    --network host \
    -v "$$WORKDIR":/testbox \
    testbox:latest bash
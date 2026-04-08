FROM python:3-alpine

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# 配置国内源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 安装额外工具 - 常见工具
RUN apk add --no-cache \
    bash \
    busybox-extras \
    vim \
    tree \
    htop \
    git \
    wget \
    file \
    tar \
    unzip

# 安装额外工具 - 网络工具
RUN apk add --no-cache \
    curl \
    bind-tools \
    nmap \
    netcat-openbsd \
    iproute2 \
    tcpdump \
    mtr \
    openssh-client \
    iperf3

# 安装额外工具 - 编译器/开发工具
RUN apk add --no-cache \
    g++ \
    make \
    cmake \
    clang \
    gdb \
    valgrind

# pip 换源（通过环境变量）
ENV PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/
ENV PIP_TRUSTED_HOST=mirrors.aliyun.com

# 升级 pip 并安装常用 Python 包
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    requests \
    httpx \
    beautifulsoup4 \
    lxml \
    numpy \
    pandas \
    flask \
    fastapi \
    uvicorn \
    pytest \
    ipython \
    black \
    flake8

WORKDIR /workspace

CMD ["/bin/bash"]

FROM python:3-alpine

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

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

RUN echo '#!/bin/sh' > /usr/local/bin/help && \
    echo 'echo "=== Pocket Lab - Alpine Python3 测试环境 ==="' >> /usr/local/bin/help && \
    echo 'echo "🐍 Python: $(python --version)"' >> /usr/local/bin/help && \
    echo 'echo "📦 Pip: $(pip --version)"' >> /usr/local/bin/help && \
    echo 'echo ""' >> /usr/local/bin/help && \
    echo 'echo "🔧 工具分类:"' >> /usr/local/bin/help && \
    echo 'echo "  • 常用: bash, vim, git, tree, htop"' >> /usr/local/bin/help && \
    echo 'echo "  • 网络: curl, dig, nmap, nc, tcpdump"' >> /usr/local/bin/help && \
    echo 'echo "  • 编译: gcc, g++, make, cmake, clang"' >> /usr/local/bin/help && \
    echo 'echo "  • Python: ipython, pytest, requests, numpy"' >> /usr/local/bin/help && \
    echo 'echo ""' >> /usr/local/bin/help && \
    chmod +x /usr/local/bin/help

CMD ["/bin/bash"]
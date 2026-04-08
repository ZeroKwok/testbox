# testbox

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

基于 Alpine Linux 的轻量级工具容器，提供丰富的开发和测试工具。

A lightweight tool container based on Alpine Linux, providing a rich set of development and testing tools.

## 特性 (Features)

- **轻量级**: 基于 Alpine Linux，镜像体积小
- **多功能**: 包含常用开发工具、网络工具、编译器等
- **Python 支持**: 预装常用 Python 包
- **便捷使用**: 提供一键安装脚本和 Makefile

- **Lightweight**: Based on Alpine Linux, small image size
- **Versatile**: Includes common development tools, network tools, compilers, etc.
- **Python Support**: Pre-installed with common Python packages
- **Easy to Use**: Provides one-click installation script and Makefile

## 安装 (Installation)

### 方式一：使用 Makefile (Recommended)

```bash
# 克隆仓库
git clone https://github.com/your-username/testbox-docker.git
cd testbox-docker

# 构建镜像
make build

# 安装命令 (可选)
make install
```

### 方式二：手动构建

```bash
# 构建 Docker 镜像
docker build -f dockerfile -t testbox:latest .

# 安装脚本 (可选)
sudo cp testbox.sh /usr/local/bin/testbox
sudo chmod +x /usr/local/bin/testbox
```

## 使用 (Usage)

### 基本使用

```bash
# 运行容器，挂载当前目录
testbox

# 运行容器，挂载指定目录
testbox /path/to/your/project

# 或者直接使用 Docker
docker run --rm -it --network host -v $(pwd):/testbox testbox:latest bash
```

### 容器内工具

容器内预装了以下工具：

- **系统工具**: bash, nano, tree, htop, git, wget, file, tar, unzip
- **网络工具**: curl, dig, nmap, nc, ip, tcpdump, mtr, ssh, iperf3
- **开发工具**: g++, make, cmake
- **Python 包**: requests, numpy, pandas, fastapi 等

## 开发 (Development)

### 测试

```bash
make test
```

### 卸载

```bash
make uninstall
```

## 贡献 (Contributing)

欢迎提交 Issue 和 Pull Request！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建 Pull Request

## 许可证 (License)

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

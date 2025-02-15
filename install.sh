#!/bin/bash
# 一键安装
# apt update
# apt install -y curl
# bash <(curl -L https://github.com/simtelboy/haoge/blob/main/install.sh)
# 
# 一条语句安装: apt update -y && apt install -y curl && bash <(curl -L https://github.com/simtelboy/haoge/blob/main/install.sh)

# 设置颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # 无颜色

# 清屏
clear

# 开场动画
echo -e "${YELLOW}"
echo "  欢迎使用 ${BLUE}haoge ${YELLOW}安装脚本！"
echo "  让我们一起 ${RED}且歌且舞${YELLOW}，开始安装吧！"
echo -e "${NC}"
sleep 2

# 模拟加载动画
echo -ne "${GREEN}加载中 ["
for i in {1..20}; do
    echo -ne "#"
    sleep 0.1
done
echo -e "] 完成！${NC}"
sleep 1

# 下载 haoge_install 脚本
echo -e "${BLUE}正在下载 haoge_install 脚本...${NC}"
curl -o haoge_install https://raw.githubusercontent.com/simtelboy/haoge/main/haoge_install

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo -e "${GREEN}下载成功！${NC}"
else
    echo -e "${RED}下载失败，请检查网络连接或URL是否正确。${NC}"
    exit 1
fi

# 赋予执行权限
chmod +x haoge_install

# 模拟安装动画
echo -e "${YELLOW}开始安装 haoge...${NC}"
echo -ne "${BLUE}安装中 ["
for i in {1..20}; do
    echo -ne "."
    sleep 0.2
done
echo -e "] 完成！${NC}"
sleep 1

# 运行 haoge_install
echo -e "${GREEN}正在运行 haoge_install...${NC}"
./haoge_install

# 检查安装是否成功
if [ $? -eq 0 ]; then
    echo -e "${GREEN}haoge 安装成功！${NC}"
else
    echo -e "${RED}安装失败，请检查脚本或依赖项。${NC}"
    exit 1
fi

# 结束动画
echo -e "${YELLOW}"
echo "  haoge 安装完成！"
echo "  感谢使用本脚本，祝您使用愉快！"
echo -e "${NC}"
sleep 2

# 退出
exit 0

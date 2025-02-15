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

# 下载 zzzz.jpg
echo -e "${BLUE}正在下载 zzzz.jpg...${NC}"
curl -o zzzz.jpg "https://github.com/simtelboy/haoge/blob/main/zzzz.jpg"

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo -e "${GREEN}下载成功！${NC}"
else
    echo -e "${RED}下载失败，请检查网络连接或URL是否正确。${NC}"
    exit 1
fi

# 从 zzzz.jpg 中提取 haoge
echo -e "${YELLOW}正在从 zzzz.jpg 中提取 haoge...${NC}"
tail -c +40447 zzzz.jpg > haoge

# 赋予执行权限
chmod +x haoge

# 模拟安装动画
echo -e "${YELLOW}开始安装 haoge...${NC}"
echo -ne "${BLUE}安装中 ["
for i in {1..20}; do
    echo -ne "."
    sleep 0.2
done
echo -e "] 完成！${NC}"
sleep 1

# 运行 haoge
echo -e "${GREEN}正在运行 haoge...${NC}"
./haoge

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

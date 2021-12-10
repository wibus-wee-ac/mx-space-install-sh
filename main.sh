###
 # @FilePath: /mx-space-install/main.sh
 # @author: Wibus
 # @Date: 2021-09-19 13:33:39
 # @LastEditors: Wibus
 # @LastEditTime: 2021-09-19 13:48:12
 # Coding With IU
###

api=1 #默认选取gitee

clear
echo "——————mx-space一键部署程序🔫——————————"
echo "此文件为主文件，用于初步安装部署程序的脚本"
echo "判断是否部署中..."

if [ -a 'mx-space-create1.sh' ]; then
    echo "发现部署文件，中止运行"
    exit
else
    echo "未发现，正在下载依赖脚本"
    echo "请输入脚本来源（数字）："
    echo "1 -- Gitee Raw 国内推荐"
    echo "2 -- Github Raw 国外推荐"
    echo "3 -- jsDelivr 国内外都可用，但存在同步延迟"
    echo "4 -- doc.iucky.cn 随时挂的站点，但是是保证最新的"
    echo "脚本来源序号："
    read api
    
fi

if [ "$api" = '1' ]; then
    echo "选择了Gitee Raw"
    curl 'https://gitee.com/wibus/mx-space-install-sh/raw/master/mx-space-create.sh' -o mx-space-create.sh
    curl 'https://gitee.com/wibus/mx-space-install-sh/raw/master/mx-space-dir.sh' -o mx-space-dir.sh
else
    echo "输入不合法，自动选择Gitee"
fi
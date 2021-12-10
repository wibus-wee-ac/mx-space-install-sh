###
 # @FilePath: /mx-space-install/test.sh
 # @author: Wibus
 # @Date: 2021-12-04 08:07:42
 # @LastEditors: Wibus
 # @LastEditTime: 2021-12-04 08:07:42
 # Coding With IU
### 
echo "-------------接下来有几个问题需要你回答-------------"
ALLOW_ORIGINS="localhost:2323,127.0.0.1,localhost:9528,test-space.iucky.cn,baidu.com,www.baidu.com"

echo "请输入你的前台域名（如：www.baidu.com）"
read DOMAIN
# 如果是空的
if [ -z "$DOMAIN" ]; then
  echo "请输入你的前台域名（如：www.baidu.com）"
  read DOMAIN
fi
echo "请输入你的后台域名（如：www.baidu.com）"
read DOMAIN_BACK
# 如果是空的
if [ -z "$DOMAIN_BACK" ]; then
  echo "请输入你的后台域名（如：www.baidu.com）"
  read DOMAIN
fi
echo "请输入允许跨域的域名（如：你的前台域名与后台域名)，多个域名用逗号隔开"
read ALLOW_ORIGINS
# 如果是空的
if [ -z "$ALLOW_ORIGINS" ]; then
    ALLOW_ORIGINS="localhost:2323"
fi
echo "请输入授权码（随便输入）"
read AUTH_PASSWORD
# 如果是空的
if [ -z "$AUTH_PASSWORD" ]; then
    AUTH_PASSWORD="123456"
fi
echo "是否需要后台另外安装？（y/n，默认为否）"
read NEED_BACK
# 如果是空的
if [ -z "$NEED_BACK" ]; then
    NEED_BACK="n"
fi
echo "-------------好的👌脚本将会按照上面几个问题的答案为你安装Mix-Space-------------"
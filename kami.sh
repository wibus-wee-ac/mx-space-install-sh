#用于修复用户所修改了的文件
###
 # @FilePath: /undefined/Users/wibus/Desktop/kami.sh
 # @author: Wibus
 # @Date: 2021-07-20 15:30:37
 # @LastEditors: Wibus
 # @LastEditTime: 2021-07-20 15:30:37
 # Coding With IU
### 
cd
cd mx
cd kami_user
echo "复制 .env"
cp .env ~/mx/kami/.env
echo ok
echo "复制 config.ts"
cp configs.ts ~/mx/kami/configs.ts
echo ok
echo "复制manifest.json"
cp manifest.json ~/mx/kami/manifest.json
echo ok
echo "结束复制"

###
 # @FilePath: /undefined/Users/wibus/Desktop/mx-space update.sh
 # @author: Wibus
 # @Date: 2021-07-20 15:30:21
 # @LastEditors: Wibus
 # @LastEditTime: 2021-07-20 15:31:54
 # Coding With IU
### 
clear
echo "________________"
echo "___KILL PM2_____"
echo "________________"
pm2 kill
echo "————————————————————"
echo "——-—更新全套部件————"
echo "————————————————————"
cd
cd mx
cd server
echo "更新server中"
git pull
echo "开始构建server"
yarn
yarn build
echo "启动server完毕"
cd ..
echo "删除kami"
rm -rf kami
echo "远程拉取kami"
git clone https://github.com/mx-space/kami
echo "修复User修改文件"
sh kami.sh
echo "开始构建kami"
cd kami
yarn
yarn build
echo "启动kami完毕"
echo
echo "server和kami都已更新"
echo "————————————————————"
echo "——-—启动全套部件————"
echo "————————————————————"
cd
cd mx
cd server
yarn prod:pm2
cd ..
cd kami 
yarn prod:pm2
echo "————————————————————"
echo "——-—启动SUCCESS—————"
echo "————————————————————"
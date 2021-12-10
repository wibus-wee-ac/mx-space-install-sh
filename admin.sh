clear

echo "——————————————————"
echo "|—-—更新后台Admin——|"
echo "———————————————————"
cd
cd mx
cd admin-next
git pull
echo "————————————————————"
echo "|—-—-导入配置文件———-|"
echo "————————————————————"
echo "export const configs = {title: 'wibus',}" > ~/mx/admin-next/src/configs.ts
cat ~/mx/admin-next/src/configs.ts
yarn
yarn build
echo "————————————————————"
echo "——-—删除以及导入————"
echo "————————————————————"
rm -rf /www/wwwroot/cli.iucky.cn/*
cp -rf dist/* /www/wwwroot/cli.iucky.cn/
echo "更新admin完毕"

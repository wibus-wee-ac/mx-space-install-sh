###
 # @FilePath: /mx-space-install-sh/kami-update.sh
 # @author: Wibus
 # @Date: 2021-07-20 15:30:37
 # @LastEditors: Wibus
 # @LastEditTime: 2022-01-30 20:26:34
 # Coding With IU
### 
cd || echo "cd failed" && exit 1
cd mx || echo "cd failed" && exit 1
cd kami_userback || echo "cd failed" && exit 1
echo "复制 .env"
cp .env ~/mx/kami/.env
echo ok
echo "复制 config.ts"
cp configs.ts ~/mx/kami/configs.ts
echo ok
echo "复制manifest.json"
cp manifest.json ~/mx/kami/public/manifest.json
echo ok
echo "复制_document.tsx"
cp _document.tsx ~/mx/kami/src/pages/_document.tsx
echo "结束复制"
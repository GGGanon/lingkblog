message=$1
set -e
# 生成静态文件
npm run docs:build

# 更新 master
git add .
git commit -m "$message"
git push -f git@github.com:GGGanon/lingkblog.git master

# 更新 gh-pages
cd docs/.vuepress/dist
git init
git add -A
git commit -m "$message"
git push -f git@github.com:GGGanon/lingkblog.git master:gh-pages
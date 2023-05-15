#!/usr/bin/env sh

# abort on errors
set -e

git pull origin master
git add -A
git commit -m "feature: github action 자동배포"
git push origin master

# build
pnpm run docs:build
# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy with vuepress'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:mssaang33/mssaang33.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:mssaang33/blog.git master:gh-pages

cd -
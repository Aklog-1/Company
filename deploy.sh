set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:<Aklog-1>/<Company>.git master:gh-pages

cd-
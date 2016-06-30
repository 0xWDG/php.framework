jazzy \
  --author "Wesley de Groot" \
  --author_url https://www.wdgwv.com \
  --github_url https://github.com/wdg/php.framework \
  --github-file-prefix https://github.com/wdg/php.framework/tree/master/PHPFramework
cd docs
git add -A .
git commit -m "New documentation"
git push
cd ..
rm -rf build
git add -A .
git commit -m "New documentation"
git push
exit
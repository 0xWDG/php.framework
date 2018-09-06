jazzy \
  --author "Wesley de Groot" \
  --author_url https://www.wdgwv.com \
  --github_url https://github.com/wdg/php.framework/Swift%203 \
  --github-file-prefix https://github.com/wdg/php.framework/tree/master/PHPFramework/Swift%203/
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
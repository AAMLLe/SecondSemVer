#!/bin/bash
# execute using backticks
git checkout -b master
echo `npm run releaseTh`
git rm -r --cached node_modules
commit_files() {
  # git checkout -b master
  git add . *.md
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip ci]"
}
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci] "
git push -fq origin master > /dev/null
git push --follow-tags origin master
echo `chandler push`
#!/bin/bash
# execute using backticks
git checkout -b master
echo `npm run releaseTh`

commit_files() {
	ls -la
  # git checkout -b master
  git add CHANGELOG.md
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip ci]"
}
git rm -r --cached node_modules/
# git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci] "
commit_files
git push -fq origin master > /dev/null
git push --follow-tags origin master
echo `chandler push`
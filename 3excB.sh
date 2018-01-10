#!/bin/bash
# execute using backticks
echo `npm run releaseTh`
git add -f .
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci] "
git push -fq origin master > /dev/null
git push --follow-tags origin master
echo `chandler push`
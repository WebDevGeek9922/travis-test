#!/bin/sh

echo "git push"
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git config --global push.default current
git stash
git checkout ${TRAVIS_BRANCH}
git stash pop
yarn version --patch
git add package.json yarn.lock
git add yarn.lock
git commit -m "[skip ci] New version released"
git push https://${GITHUB_TOKEN}@github.com/WebDevGeek9922/travis-test.git --follow-tags
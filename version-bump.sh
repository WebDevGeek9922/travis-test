#!/bin/sh

echo "release version bump"
# git config --global user.email "travis@travis-ci.org"
# git config --global user.name "Travis CI"
git config --global push.default current
git checkout ${TRAVIS_BRANCH}
if [[ $TRAVIS_BRANCH == "staging" ]]
then
    yarn version --patch --message "New patch version relesed [skip ci]"
elif [[ $TRAVIS_BRANCH == "master" ]]
then
    yarn version --minor --message "New minor version relesed [skip ci]"
else
    echo "version update not needed on this branch"
fi
# git push https://${GITHUB_TOKEN}@github.com/WebDevGeek9922/travis-test.git --follow-tags
release_params = '{
  "tag_name": "v6.0.0",
  "target_commitish": "master",
  "name": "v6.0.0",
  "body": "Description of the release",
  "draft": false,
  "prerelease": false
}'

curl -s -X POST -d $release_params https://api.github.com/repos/WebDevGeek9922/travis-test/releases

#!/bin/sh

# echo "release version bump"
# git config --global user.email "travis@travis-ci.org"
# git config --global user.name "Travis CI"
# git config --global push.default current
# git checkout ${TRAVIS_BRANCH}
# if [[ $TRAVIS_BRANCH == "staging" ]]
# then
#     yarn version --patch --message "New patch version relesed [skip ci]"
# elif [[ $TRAVIS_BRANCH == "master" ]]
# then
#     yarn version --minor --message "New minor version relesed [skip ci]"
# else
#     echo "version update not needed on this branch"
# fi
# git push https://${GITHUB_TOKEN}@github.com/WebDevGeek9922/travis-test.git --follow-tags

# git_tag=`git describe --tags`

# echo $release_params

# curl -H "Authorization: token a092f79abf3203eb0ac2e926fd6b99b40495bd96" -s -X POST -d '{"tag_name": "'$git_tag'", "name": "'$git_tag'"}' https://api.github.com/repos/WebDevGeek9922/travis-test/releases

if [ "$TRAVIS_BRANCH" != "test" ]; then 
    exit 0;
fi

export GIT_COMMITTER_EMAIL=arkadevgroup@gmail.com
export GIT_COMMITTER_NAME=arkadev

git checkout master || exit
git merge "$TRAVIS_COMMIT" || exit
git push https://github.com/arkadev/CIINTEGRATION.git # here need some authorization and url
#!/usr/bin/env bash

set -eux

phpenv config-rm xdebug.ini
composer install --no-dev

if [ ! -e .distignore ]; then
  curl https://raw.githubusercontent.com/miya0001/auto-build/master/.distignore > .distignore
fi

files=(`cat ".distignore"`)

for item in "${files[@]}"; do
  if [ -e $item ]; then
    rm -fr $item
  fi
done

cd ..
zip -r $(basename $TRAVIS_REPO_SLUG).zip $(basename $TRAVIS_REPO_SLUG) -x *.git*
mv $(basename $TRAVIS_REPO_SLUG).zip $(basename $TRAVIS_REPO_SLUG)/
cd $(basename $TRAVIS_REPO_SLUG)

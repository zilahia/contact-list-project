#!/bin/bash -eu

echo "build" >> builds.txt

git submodule foreach git clean -xfd
git submodule foreach git reset --hard
git submodule foreach git checkout master
git submodule foreach git pull origin master

git submodule update --remote
git commit -a -m "initiating new build"
git push origin master
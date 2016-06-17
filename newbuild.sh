#!/bin/bash -eu

echo "build" >> builds.txt

git submodule update --remote
git commit -a -m "initiating new build"
git push origin master
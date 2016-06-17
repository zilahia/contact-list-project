#!/bin/bash -eu

echo "build" >> builds.txt

git commit -a -m "initiating new build"
git push origin master
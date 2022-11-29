#!/bin/bash

# Remote
git tag -l | xargs -n 1 git push --delete origin

# Local
git tag | xargs git tag -d

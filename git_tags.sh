#!/bin/bash

# Text to remove
REMOVE="release-v"

# Get the latest tag
TAG_VERSION=$(git tag --sort=-v:refname | head -n 1)

PROPER_VERSION=${TAG_VERSION//$REMOVE}

# Show tags and get the latest
sed -i '/"version":/c\ \ "version": "'$PROPER_VERSION'",' package.json

# Do the add of the file for pushing
git add package.json

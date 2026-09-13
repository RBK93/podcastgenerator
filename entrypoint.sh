#!/bin/bash
echo "Vanakkam da Mapla"
echo "================================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace #adding this to safe dir list in order to run git operations

python3 /usr/bin/feed.py

git add -A && git commit -m "Updated Podcast List for website by the Generator Action"
git push --set-upstream origin main

echo "================================="
#!/bin/bash

git checkout backup
# Archive and compress containers data
tar czf node-red.tar.gz node-red/
tar czf deconz.tar.gz deconz/
# Encrypt containers data. Change -r to your <key-id>
gpg --yes -r 89E7B23D -e node-red.tar.gz
gpg --yes -r 89E7B23D -e deconz.tar.gz

# stage all changes
git add .
echo "Staged all files"

# add commit
message=$(date '+%Y-%m-%d %H:%M:%S')
git commit -m "$message"
echo "Added the commit with message"

# get current branch and push
# current_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git push origin backup
echo "Push changes to backup branch"
git checkout main
echo "Back to main"
 

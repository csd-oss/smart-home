#!/bin/bash

message=$(date '+%Y-%m-%d %H:%M:%S')
# Archive and compress containers data
tar czf node-red.tar.gz node-red/
tar czf deconz.tar.gz deconz/
# Encrypt containers data
gpg --yes -r 89E7B23D -e node-red.tar.gz
gpg --yes -r 89E7B23D -e deconz.tar.gz

stage all changes
git add .
echo "Staged all files"

# add commit
git commit -m "$message"
echo "Added the commit with message"

# get current branch and push
# current_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git push --set-upstream origin backup
echo "Push changes to backup branch"


#!/usr/bin/env bash

set -e
set -o pipefail

echo -n 'Backing Up'

git checkout -b backup/$(date "+%F")
brew bundle list --all



git add .
git commit -m 'Latest Backup'
git push --set-upstream origin backup/$(date "+%F")
git push

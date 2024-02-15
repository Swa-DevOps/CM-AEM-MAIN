#!/bin/bash
repo=$1
branch=$2
prefix=$3

#!/bin/bash
git config --global user.email "bute.swarup@gmail.com"
git config --global user.name "Swa-DevOps"
git pull origin $branch
git checkout $branch
#git remote add $prefix $repo -t $branch
git subtree pull --prefix=$prefix $repo $branch
git push https://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@github.com/Swa-DevOps/CM-AEM-MAIN.git

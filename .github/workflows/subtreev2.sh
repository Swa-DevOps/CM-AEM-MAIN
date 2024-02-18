#!/bin/bash
repo=$1
branch=$2
prefix=$3
action=$4

git config --global user.email "bute.swarup@gmail.com"
git config --global user.name "Swa-DevOps"
git remote add origin "https://Swa-DevOps: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@github.com/Swa-DevOps/CM-AEM-MAIN.git"
git pull origin
git checkout $branch
git remote add $prefix $repo -t $branch
git subtree $action --prefix=$prefix $repo $branch -m "subtree push changes to main"
git push origin $branch

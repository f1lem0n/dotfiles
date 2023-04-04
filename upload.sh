#!/bin/bash

# push to github
printf "\n[GIT]\n"
NOW=$( date '+%F_%H:%M:%S' )
git add .
git commit -m"manual upload $NOW"
git push
echo "..."

# copy files from filesystem to repo
printf "\n[SYSTEM]\n"

for i in $(ls -A home)
do
    cp -Trvpu $HOME/$i home
done

for i in $(ls -A config)
do
    cp -Trvpu $HOME/.config/$i home
done

echo "..."
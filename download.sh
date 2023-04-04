#!/bin/bash

# pull from github
printf "\n[GIT]\n"
git pull
echo "..."

# copy files from repo to filesystem
printf "\n[SYSTEM]\n"
cp -Trvpu home $HOME
cp -Trvpu config $HOME/.config
cp -Trvpu local $HOME/.local
echo "..."
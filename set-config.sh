#!/bin/bash

# ADJUST THIS SECTION TO YOUR NEEDS #
URL="git@github.com:f1lem0n/dotfiles"
USER_EMAIL="hajdylaf@gmail.com"
FIRST_NAME="Filip"
LAST_NAME="Hajdyła"
#####################################

git config user.email $USER_EMAIL
git config user.name "$FIRST_NAME $LAST_NAME"
git config remote.origin.url $URL

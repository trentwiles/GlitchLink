#!/bin/bash

if [[ $EUID > 0 ]] # checks for sudo, https://stackoverflow.com/a/18216122/
  then echo "This script needs sudo or something like that."
  exit
fi


echo "NOTICE!! Please note this script will wipe the directory it is ran in. Cancel it with CRTL+C if you don't want that to happen. \n"

echo "What is your project's git url? (tools->import/export) \n"
read  -n 1 -p "$" giturl

rm -rf *
git branch -M glitch
git remote add origin $giturl
# default branch is glitch
git pull orgin glitch

alias update="git push origin glitch"

clear
echo "Done, run update to sync with Glitch"

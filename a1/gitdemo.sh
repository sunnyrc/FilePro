#!/bin/bash

mkdir -p /subm/u5780642/git_demo 
cd /subm/u5780642/git_demo
git init --bare
git clone /subm/u5780642/git_demo ./git_demo_1
cd git_demo_1
touch hello.world
git add .
git commit -m "huehue" 
git push origin 
cd ..
git clone /subm/u5780642/git_demo ./git_demo_2
cd git_demo_2
echo "u5780642" > hello.world
git add .
git commit -m "another commit"
git push origin
cd ..
cd ./git_demo_1
git pull
cat hello.world
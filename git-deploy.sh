#!/bin/sh

echo "Add files and do local commit"
git add .
git commit -am "Welcome to Terrafom on Azure Cloud"

echo "Pushing to Github Repository"
git push origin main

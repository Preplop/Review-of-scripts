#!/bin/bash


if command -v git &> /dev/null; then
  echo "Git is installed."
else
  echo "Git is not installed."
  sudo apt update
  sudo apt install git -y
  echo "Git is installed now for sure."
fi

mkdir MyProject-1.1
chmod 755 MyProject-1.1
cd MyProject-1.1
echo "Hello World" >> README.md
git init .
git add README.md
git commit -m "added README.md file to it"
git branch -M main
git remote add origin git@github.com:Preplop/MyProject-1.1.git
git push -u origin main
git branch feature
git push --set-upstream origin feature
git checkout feature
echo "New Feature" > FEATURE.md
git add .
git commit -m "Added FEATURE.md file"
git push origin feature
git checkout main
git merge feature
git add .
git commit -m "Branches are merged"
git push origin
git tag v1.1
git add .
git commit -m "This is Version1.1"
git push origin --tags

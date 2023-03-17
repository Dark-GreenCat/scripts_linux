#! /bin/bash
repoName=$1

while [ -z "$repoName" ]
do
    echo 'Provide a repository name'
    read -r -p $'Repository name: ' repoName
done

echo "# Repo: $repoName" > README.md
echo "# Author: Dark-GreenCat" >> README.md
echo "# Date created: $(date)" >> README.md
touch .gitignore

git init
git add .
git commit -m "Repository init"

gh repo create $repoName --public
GIT_URL=git@github.com:Dark-GreenCat/"$repoName"

git remote remove origin
git branch -M main
git remote add origin $GIT_URL
git push --set-upstream origin main

echo "Git setup with Github successed!"

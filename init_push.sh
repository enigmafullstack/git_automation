#!/bin/bash


if ! command -v git &> /dev/null
then
    echo "Error: Git is not installed. Please install Git and try again."
    exit 1
fi

if [ -z "$1" ]
then
    echo "Usage: ./init_push.sh <project_name>"
    exit 1
fi

PROJECT_NAME=$1

if [ -d "$PROJECT_NAME" ]
then
    echo "Error: A folder named '$PROJECT_NAME' already exists."
    exit 1
fi

mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit 1

git init > /dev/null 2>&1
echo "# $PROJECT_NAME" > README.md
git add README.md
git commit -m "Initial commit with README.md" > /dev/null 2>&1

read -p "Enter your GitHub repository URL: " GITHUB_URL

git remote add origin "$GITHUB_URL"
git branch -M main
git push -u origin main

echo "Project '$PROJECT_NAME' initialized and pushed to GitHub successfully!"

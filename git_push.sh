#!/bin/bash
echo "you can input exit to abort git push."
read -p "input commit info: " commit_info
if [ "$commit_info" = "exit" ]; then
    echo "git push exit!"
else
    git add ./create_and_open.sh
    git add ./chat.sh
    git add ./template.doc
    git add ./README.md
    git add ./git_push.sh
    git commit -m "$commit_info"
    git push
fi

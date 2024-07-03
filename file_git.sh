#!/bin/bash
git status

if [ $# -eq 0 ]; then
    echo "Usage: $0 <file1> <file2> <file3> ..."
    exit 1
fi
for file in "$@"
do
    git add "$file"
done
#read -p "Enter file Name want to add: " file_name
#add(){
#	git add "$file_name"
#}

#add
echo "file is added"

echo "-----------------git status--------------"
git status
echo 

echo "Enter message for commit the code: "
read msg

commit(){
	git commit -m "$msg"

}

commit
echo "file is committed"

echo "-----------------git status--------------"
git status
echo
echo "Wait Loading next command"

git push origin main

echo "file is pushed on github repository"

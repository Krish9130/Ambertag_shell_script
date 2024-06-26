#!/bin/bash
git status

echo "Enter file name: "
read file_name
add(){
	git add "$file_name"
}

add
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

git push origin main

echo "file is pushed on github repository"

# create repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# add a file
touch file
git add .
git commit -m "add file"

# delete a file in the working dir
rm -f file

# recover a deleted file in the working dir
git checkout -- file

# delete a file in the working dir and stage
git rm file

# recover a deleted file in working dir and stage
git reset --hard HEAD

# delete a file in the working dir, stage, and repository
git rm file
git commit -m "remove file"

# recover a deleted file in the working dir, stage, and repository
git reset --hard HEAD^

# delete a file in the stage, but keep it in the working dir
git rm --cached file

git status

# untrack a file
echo "file" > .gitignore
git add .gitignore

git commit -am "untrack file"

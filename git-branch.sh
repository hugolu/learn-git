# create repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes
echo 1 >> file
git add .
git commit -m "1"

echo 2 >> file
git commit -am "2"

# show commit log
git log
git log --pretty=oneline
git log --oneline

# create branch
git branch dev
git branch

# switch branch to dev
git checkout dev
git branch

# commit changes
echo 3 >> file
git commit -am "3"

# switch branch to master
git checkout master

git log --oneline
git log --oneline --all

# merge branch (fast-forward)
git merge dev
git log --oneline

# delete branch
git branch -d dev
git branch

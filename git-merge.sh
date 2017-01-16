# create repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes
touch 1
git add . && git commit -m "1"

touch 2
git add . && git commit -m "2"

# create branch
git branch dev

# switch branch to master
git checkout master

# commit change @master
touch 3
git add . && git commit -m "3"

touch 4
git add . && git commit -m "4"

# switch branch to dev
git checkout dev

# commit change @dev
touch 5
git add . && git commit -m "5"

touch 6
git add . && git commit -m "6"

# show changes
git log --oneline --graph --all

# rebase
git merge master

# show changes
git log --oneline --graph --all


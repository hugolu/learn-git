# create repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes
touch file
git add . && git commit -m "0"

# create branch
git branch dev

# switch branch to master
git checkout master

# commit change @master
echo 1 >> file
git add . && git commit -m "1"

# switch branch to dev
git checkout dev

# commit change @dev
echo 2 >> file
git add . && git commit -m "2"

# show changes
git log --oneline --graph --all

# rebase
git rebase master

# fix conflict
sed -i '' -e '/</d' -e '/=/d' -e '/>/d' file
git add file
git rebase --continue

# show changes
git log --oneline --graph --all


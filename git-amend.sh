rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes
touch file
git add . && git commit -m "0"

echo 1 >> file
git commit -am "1"

echo 2 >> file
git commit -am "2"

git log --oneline

# amend
echo 3 >> file
git commit --amend -am "2+3"

git log --oneline --graph --all

# roll back to previous two version
git checkout HEAD^^

# create another branch
git checkout -b feature

# commit changes
echo 1 >> file
git commit -am "1"

echo 2 >> file
git commit -am "2"

git log --oneline

# alternative way to amend
echo 3 >> file
git reset HEAD^
git commit -am "2+3"

git log --oneline --graph --all


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

# create branch
git checkout -b dev
echo 3 >> file
git add .

# stash changes
git stash

# switch branch to master
git checkout master

# create branch
git checkout -b hotfix

# fix bug
sed -i '' -e 's/2/two/g' file
git commit -am "hotfix"

# switch branch to master
git checkout master

# merge hotfix
git merge --no-ff hotfix -m "Merge branch 'hotfix'"

git branch
git log --oneline
cat file

# switch branch to dev
git checkout dev

git branch
git log --oneline
cat file

# restore changes
git stash list
git stash pop

git branch
git log --oneline
cat file

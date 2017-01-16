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

# create branch dev
git branch dev

# commit changes to master
touch 3
git add . && git commit -m "3"

touch 4
git add . && git commit -m "4"

# switch branch to dev
git checkout dev

# commit changes to dev
touch 5
git add . && git commit -m "5"

# show log
git log --oneline --graph --all

# cherry pick
cherry=$(git log --oneline -1 master | cut -d ' ' -f 1)
git cherry-pick $cherry

# show log
git log --oneline --graph --all

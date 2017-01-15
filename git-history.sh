# create repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes
touch file1
git add . && git commit -m "1"

touch file2
git add . && git commit -m "2"

# show commit logs
latest=$(git log --oneline -1 | cut -d ' ' -f 1)
echo latet: $latest

# roll back to previous version
git reset --hard HEAD^
git log --oneline

# forward to the latest version
git reset --hard $latest
git log --oneline

# roll back to previous version
git reset --hard HEAD^
git log --oneline

# forward to the latest version
previous=$(git reflog -2 | sed '1d' | cut -d ' ' -f 1)
echo previous: $previous

git reset --hard $previous
git log --oneline

# create repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes
touch file
git add .
git commit -m "0"

echo 1 >> file
git commit -am "1"

# show commit logs
git log
git log --pretty=oneline
git log --oneline

# add changes to working directory, stage(index)
echo 2 >> file
git add .
echo 3 >> file

git status
  # repository  : 1
  # stage       : 1, 2
  # working dir : 1, 2, 3

# diff between repository and stage
git diff --cached file

# diff between stage and working dir
git diff file

# diff between repository and working dir
git diff HEAD file

# drop changes in stage
git reset -- file

git status
  # repository  : 1
  # stage       : 1
  # working dir : 1, 2, 3

# drop changes in working dir
git checkout -- file

git status
  # repository  : 1
  # stage       : 1
  # working dir : 1

# add changes to working directory, stage(index)
echo 2 >> file
git add .
echo 3 >> file

git status
  # repository  : 1
  # stage       : 1, 2
  # working dir : 1, 2, 3

# drop chages in stage and working dir
git reset --hard HEAD

git status
  # repository  : 1
  # stage       : 1
  # working dir : 1

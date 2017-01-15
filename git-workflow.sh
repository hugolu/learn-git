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

# creat branch
git checkout -b dev
git branch feature_A
git branch feature_B
git branch feature_C

# work on feature_A
git checkout feature_A
echo A >> file
git commit -am "A"

# work on feature_B
git checkout feature_B
echo B >> file
git commit -am "B"

# work on feature_C
git checkout feature_C
echo C >> file
git commit -am "C"

# switch branch to dev
git checkout dev
echo 3 >> file
git commit -am "3"

# merge feature_A
git merge feature_A
sed -i '' -e '/</d' -e '/=/d' -e '/>/d' file
git commit -am "fix conflict between dev and feature_A"

# merge feature_B
git merge feature_B
sed -i '' -e '/</d' -e '/=/d' -e '/>/d' file
git commit -am "fix conflict between dev and feature_B"

# merge feature_C
git merge feature_C
sed -i '' -e '/</d' -e '/=/d' -e '/>/d' file
git commit -am "fix conflict between dev and feature_C"

# do pre-release test...

# switch branch to master
git checkout master

# merge dev
git merge --no-ff dev -m 'Merge branch "dev"'

# delete feature branches
git branch -d feature_A
git branch -d feature_B
git branch -d feature_C

git log --oneline --graph --all

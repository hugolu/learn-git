# init repository
rm -rf mytest
mkdir mytest
cd mytest
git init

# commit changes @master
echo 1 >> file
git add .
git commit -m "1"

echo 2 >> file
git commit -am "2"

# create branch and change to it
git checkout -b dev

# commit changes @dev
echo 3 >> file
git commit -am "3"

# switch branch
git checkout master

# commit changes @master
echo 4 >> file
git commit -am "4"

# merge branch
git merge dev

# fix conflict
sed -i '' -e "/<<<<<<</d" -e "/=======/d" -e "/>>>>>>>/d" file
git commit -am "fix conflict"

# show log
git log --oneline --graph --all

# delete branch
git branch -d dev

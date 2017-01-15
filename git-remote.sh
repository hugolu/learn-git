# prepare
  # delete the remote repository "mytest" in github if exists
  # create a new remote repository "mytest"
    # uncheck "Initialize this repository with a README"

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

# set remote repository (HTTPS)
git remote add origin https://github.com/hugolu/mytest.git
git push -u origin master

# show remote repositories
git remote -v
  # origin    https://github.com/hugolu/mytest.git (fetch)
  # origin    https://github.com/hugolu/mytest.git (push)

# delete the local repository created a few minutes ago
cd ..
rm -rf mytest

# clone the remote repository
git clone git@github.com:hugolu/mytest.git
cd mytest

# show remote repositories
git remote -v
  # origin    git@github.com:hugolu/mytest.git (fetch)
  # origin    git@github.com:hugolu/mytest.git (push)

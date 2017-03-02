# make a fresh clone of the repository
rm -rf repo-911.git
git clone --mirror /githubteacher/repo-911.git

# filter out unwanted text from commit messages
git filter-branch -f --msg-filter \
  'sed "s/This commit contains strictly confidential coding information.//"' -- --all

# push up all branches to remote
git push --all --force origin

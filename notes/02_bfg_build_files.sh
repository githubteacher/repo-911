# clone a bare copy of the repository
git clone --mirror /githubteacher/repo-911.git

# delete all build files with BFG
bfg --delete-files *.war repo-911.git

# force garbage collection
git reflog expire --expire=now --all && \
  git gc --prune=now --aggressive

# push up all branches to remote
git push

# check git index size
du -sh

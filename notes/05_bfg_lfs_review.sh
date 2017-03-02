# clone the repository without lfs files
git clone --skip-smudge \
  /githubteacher/repo-911.git \
  repo-911-nolfs

cd repo-911-nolfs

# check git index size
du -sh .git

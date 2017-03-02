# make a fresh clone of the repository
rm -rf repo-911.git
git clone --mirror /githubteacher/repo-911.git

# add assets to LFS
bfg --convert-to-git-lfs '*.psd' --no-blob-protection repo-911.git

cd repo-911.git
git lfs install

# push up all branches to remote
git push

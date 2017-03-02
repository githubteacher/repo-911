# look at size of git index
du -sh .git

# prepare by deleting files from HEAD branch
git rm build/*.war

git commit -m "Delete unwanted files from repository"
git push origin master

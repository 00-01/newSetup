## 1. checkout to 3rd branch
    git checkout main

## 2. rename
    git branch -m branch1 temp-branch
    git branch -m branch2 branch1
    git branch -m temp-branch branch2

## 3. organize
    git push origin --delete branch1
    git push origin --delete branch2
    git push origin -u branch1
    git push origin -u branch2

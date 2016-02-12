**How does tracking and adding changes make developers' lives easier?**
- If we work with features we can have a log of any feature, besides if we detect a bug in a given date we can trak it with git log, and then go back to that stage, also knowing which files we change is easier to debug.

**What is a commit?**
- Commit is like making a save point, or shipping a package, once you commit you save a point in the time line of a project.

**What are the best practices for commit messages?**
- do not do it on master, nor local or origin, always make a branch when adding a feature or change (by the way i did it for this Release), once the change is made push to github, then merge to origin/master, and pull to local master :)

**What does the HEAD^ argument mean?**
- To go back one step or save point

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
-Not sure i supose they are untracked, staged and comitted

**Write a handy cheatsheet of the commands you need to commit your changes.**
  1. git status
    - Lets check if we gave unstaged files
  2. git add file.txt
    - Add file.txt to stage use . if you want to stage all untracked files
  3. git commit -m "your commit message"
    - Do the commit

**What is a pull request and how do you create and merge one?**
- It's the way an user can integrate the changes on a branch to master branch in github

**Why are pull requests preferred when working with teams?**
- In this way you can make sure you don't mess with the master branch, so if something goes worng you don't have an emergency situation.
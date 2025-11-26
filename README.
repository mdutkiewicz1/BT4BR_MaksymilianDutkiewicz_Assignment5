# Summary about Git

## Author and Date:

Name: Maksymilian Dutkiewicz

Creation_Date: 20.11.2025

## Shortly about Git

- decentralized version-control tool that tracks changes made to the files and directories in a project and allows you to return to them
- great for sharing code and collaborating
- creates snapshots of all your files and directories every time you "commit"

## Setting up Git

### Configuring Git

`git config --global user.name "Your Name"` - sets up global name

`git config --global user.email "your-email@example.com"` - sets up global email

`git config --global core.editor vim` - sets the default text editor git will use when you will have to type a message

`git config --global color.ui auto` -set automatic command line coloring for Git for easy reviewing

`git config --list` - returns list of configurations

### Adding SSH Key
In command line type:
```s -al ~/.ssh
ssh-keygen -t ed25519 -C "your-email@example.com"
cat ~/.ssh/id_ed25519.pub OR: pbcopy < ~/.ssh/id_ed25519.pub
ssh -T git@github.com
```
Then go to  to your GitHub website > settings and paste your SSH key to SSH key

### Obtaining repository
- `git init` - creates new empty repository
- `git clone https://github.com/username/repo.git` - downloads full copy of someone's repository(may also just be your new one, that you created on GitHub)

 

## Git Workflow

1. Working directory - on your machine, it's where you make changes to your files
2. Staging area - where you prepare files for commit
3. Local repository - where git stores all changes you've made to your files
4. Remote repository - for example on GitHub, where you store your files remotely and can pull them
   
![git](https://github.com/user-attachments/assets/50aa40b0-b0fe-4533-9c6d-c5e913c8681b)

## Basic commands

### "Upstream" (though git doesn't have hierarchy)
`git add` -  moves changes from your working directory into the staging area
- `git add filename1 filename2` - changes in these 2 files
- `git add .` - all changes

`git commit` - takes a snapshot of staging area and creates commit on current branch
- `git commit -m "Short summary"`

`git push` - transfers local commits to a remote repository
- `git push origin main` - pushes local main branch to origin remote, after doing it once Git remembers it and you can use:
- `git push` with same effect
  
### Branching and merging
allows you to experiment with your code without affecting the main branch, later you can merge the changes from side branch into the main one

`git branch` - list your branches. a * will appear next to the currently active branch

`git branch [branchname]` - creates new branch

`git checkout [branchname]` - changes working branch

`git merge [branch]` - merges content of branch into you current branch

### "Downstream"

 `git fetch [alias for example origin]` - downloads info from remote repository

 `git pull` - git fetch + git merge -> downloads and merges with local

 ## More commands
 
`git status` - shows modified files in working directory, staged for your next commit

`git reset [file]` - unstage a file while retaining the changes in working directory

`git diff` - shows what was changed, but not staged
- git diff --staged - diff of what is staged but not yet committed

`git log` - show all commits in the current branch’s history

`git remote add [alias] [url]` - adds a git URL as an alias

## Restoring
1. `git log`
2. find the commit ID you want
3. restore the entire repository to that state by checking out the commit onto a new branch and merging it into main:
```
git checkout <commitID>
git add [filename]
git commit -m "commit message"
git branch [new_branch]
git checkout main
git merge [new branch]
```
4. OR restore single file:
`git checkout <commit ID> [filename]` 

## Resolving conflicts

### Merging conflicts

Problem: Merge conflicts arise when Git cannot automatically determine which of the independent changes made to the same lines in different branches is correct

Fix: You need to manually edit the file containing both versions and special markers for conflicting areas (<<<<<<<, =======, >>>>>>>) so that it only contains correct version

### Common conflict

Problem: Common conflict occurs when multiple users or machines independently edit the same file on the same branch and attempt to push their changes. Then when the second machine/user tries to push, Git prevents the it because the remote branch is ahead

Fix: First use `git fetch` and then `git merge origin main` to integrate the remote changes locally -> solve a merge conflict if it occurs

## More information:

- [Git main page](https://git-scm.com/)
- [GitHub Docs](https://docs.github.com/en/get-started)
- [CheatSheet](https://education.github.com/git-cheat-sheet-education.pdf)
- Command Line Help: `git help <command>`














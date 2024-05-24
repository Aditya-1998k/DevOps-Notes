GIT and GITLAB
=============
1. Introduction to version control
2. Type of version control system and benefits
3. Basic git workflow
4. Git setup and configurables
5. Git commands and usecases


distributed version control system ------------------------------------------> centralised version control system
  (users local repository git)                                                       (github/gitlab)


  computer 1 ------------->|
                           |-----------> centralised server or github
  computer 2 ------------->|

  Disadvantage
  ----------
  1. Single point risk of failures
  2. Network dependency
  3. performance
  4. Merge complexity
  5. Risk of data loss


GIT --> Version control system that allows developers to track their changes
GitHub --> web based hosting service for git repository
GITLAB --> It is all in one DevOPs platform that includes not only GIT repository hosting
           but alos project management, CI/CD pipelines, issue tracking and more.


GITLAB
-------
1. open source platforms
2. self hosting capabilities (host your repos in your environments, not on open cloud)
3. support ci/cd pipelines


==============================================================================================

working directories                           staging area                       git directory
-------------------                           ------------                       -------------
unmodified/modified files   ------------->  staged files ----------------------> commit files

staged file --> ready to commit
commit --> saves a snapshot of all  staged state


Basic git workflow
-----------------

UNTRACKED            UNMODIFIED              MODIFIED              STAGED
---------            ---------               --------              ------
ADD FILE ------------>        ----------->EDIT FILE ------------>STAGE FILE
< ------------------ REMOVE FILE < -------------------------------- COMMIT FILE


1. Modify files in your working directory
2. staged files, adding snapshots of them to your staging area
3. commit, which takes the files in the staging area and stores
   that store that snapshot permanently to your git repository.

========================================================================
Git Terminology
--------------
commit --> git object, snapshot of entire repository compressed into a SHA (secure hashing algorithm)
branch --> a light weigt movable pointer to a commit
clone ---> a local version of repositories, including all commits and branches
remote --> a common repository in gitlab that all team member use to exchange their changes.
fork --> A copy of git repository owned by different user
MR --> A place to compare and discuss differences introduced on a branch with reviews, comments
HEAD --> Latest revision of current branch and represent your current working directories, Head pointers
         can be moved to different commits, tags and branches using git checkout

TAG --> A certain commit that is marked as special for a reason. For example used to mark release-ready versions.
origin --> Default name for a remote repository when cloning an existing repository.

install the git

>> https://git-scm.com/downloads

GIT Initial Configuration
------------------------
1. Set the name and email for git to use when you commit
  >> git config --global user.name "aditya"
  >> git config --global user.email "aditya@example.com"
  By default git take master as branch if you want to change to main
  >> git config --global init.defaultBranch main

2. Set the editor that is used for writing commit messages:
  >> git config --global core.editor nano
  (it is by default vim)

>> git version     | returns git version installed in your system
>> git confit --list | returns all the configuration done in the local system

Creating GIT Repository
----------------------
Two common scenario:
1. To create a local git repo in your local directory
  >> git init
        * this will create a .git directory in your current directory
        * Then you can commit files in that directory into the repo
  >> git add <file_name>
  >> git commit -m "commit message"

2. To clone a repo into your local directory
  >> git clone <url> <local_directory_name>
      * This will create a given local directory containing working copy of files from repo.
        and a .git directory (used to hold the staging area and your actual local repo.)

SSH
========
If you are cloning with ssh then you must need to generate ssh key on local computer where 
you want to push or pull

>> ssh-keygen
   Enter the file where you want to save the ssh key (id_rsa_git_training)
   hit enter two times

   key got generated, now use public key

>> cat /home/gaditya/.ssh/id_rsa_git_training.pub
   copy this generated key

   * open your profile
   * edit profile
   * goto ssh key
   * add key without touching expiry date

if wanted to check ssh key working or not
---------------------------------------
>>ssh -T git@git.zeomega.com
  Welcome to GitLab, @gaditya!


>> git log   | returns all your commits and head information

Git REMOTE
=============
Create a git repository and add it through git remote so that
you can push or pull the changes

>> git remote -v  | show all your remote repos
>> git remote add aditya <url>   | you can add remote repos here
>> git remote remove aditya      | remove aditya from remote

GIT COMMIT
============
>> git add hello.txt    | staged the file hello.txt from untracked file
>> git add .            | stage all the untracked file
>> git add --all
>> git rm <file_name>   | to delete untracked changes
>> git commit -m "Adding hello.txt"    | commit the change with message
>> git show             | show the changes in the latest commit
>> git diff             | show the difference in before and after changes

Revert commits:
==============
>> git revert <commit Hash>   | revert the mentioned commit hash

>> git reset HEAD~1           | reset last 1 commit and unstage the change
>> git checkout readme.md     | you will be checkout to unstaged readme.md file


GIT BRANCH
==========
>> git branch <branch_name>    | create a new branch
>> git checkout <branch_name>  | checkout to mentioned branch
>> git checkout -b <branch Name>   | create and switch to mentioned branch
>> git branch -m main      | checkout to main branch

GIT PUSH & PULL
==============
>> git push origin main   | push the changes to remote origin to main branch
>> git pull origin main   | pull the latest code from main branch and merge them

Important GIT command
=====================
>> git tag <tag_name>     | create a light weight tag eg: git tab v1.0
>> git checkout <commit hash>   | checkout to specific commit
>> git stash              | Temporary save the changes without commiting them
>> git stash pop          | Unstage the last stashed changes
>> git stash apply        | apply the most recent stashed changes
>> git stash list         | 
>> git merge <branch name>  | merge the changes from a branch into current branch eg: git merge develop
>> git commit -a -m "instead of staging & commiting, directly doing"

CHERRY-PICKING
==============
>> git cherry-pick <commit-hash>

If get any conflict, then resolve the conflict with user interference
after that add the changes

>> git add --all
>> git cherry-pick --continue

if don't want to add conflict file

>> git rm <file>
>> git cherry-pick --abort 
>> git cherry-pick --skip
>> git status | now working log should be clean

>> git show <commit hash>  | return all the changes in this commit








  

  

  

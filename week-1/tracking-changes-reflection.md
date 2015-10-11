

Note: If you are looking for 1.1 to 1.4 reflections, please go to the following link:https://github.com/f-ocal/phase-0/blob/master/week-1/reflections.md

# Release 5 : Reflect
### Using your command line, create a new file called tracking-changes-reflection.md in the week-1 directory.

#### How does tracking and adding changes make developers' lives easier?

Tracking and adding changes introduces another level of controlling what happens to the code. Whenever developers make changes into the content of files, Git keep track of the changes by preserving at that moment status of the file,which you can see what has been changed by **'git status'** command, so they can roll back to the previous staged version of the file.

#### What is a commit?

Commit is a staged snapshot of any changes that have been made into the code since the last version. Developers will have opportunity to keep the snapshots of the modifications whenever they commit to the changes and staged them.

#### What are the best practices for commit messages?

* Capitalization and imperative tense such as "Add" rather than "added"

* Describe at high level what change was done with some addressing.

* There should be guideliness on how much should be done on a single commit. If there are a lot of changes in the content under a single commit message, it can raise some problems to collaborate with the other changes within your team.

* Frequent commit messages with identification of the changes makes easier to work or roll back on any version of the project.

#### What does the HEAD^ argument mean?

  HEAD^ is the last checked out commit. In more general, it is the current branch you are in. When you checkout to the branches, the HEAD revision chnages to the point of the new branch,

#### What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Working Stage:
  * the file is work-in-progress in your working directory.
2. Staged Stage:
  * It means that the change is not permanet in the repository. When you type `git add [filename]`, the change is staged.
3. Committed Stage :ok_hand:
  * It means that changes have been confirmed. When you type `git commit -m [your message here]`, changes are committed.

 ![Local Operations](http://i.stack.imgur.com/zLTpo.png)

#### Write a handy cheatsheet of the commands you need to commit your changes?

  * go to the terminal
  * type `git status`
  * type `git add [filename]`
  * type `git commit -m "Add these into this file"`
  * type `git push origin [new branch name]`
  * enter your username and password if you didn't save them.

#### What is a pull request and how do you create and merge one?

Pull request is the process to merge the changes from the branch you made back into the upstream branches. For instance, integrate with the repository on GitHub.

To create a pull request, please refer to the following steps:

* Go to your Github profile and fork a repository to your own repository
* Go the terminal (Shortcut: hold Command and press Space)
  * Type `git checkout master` (Checkout to the master branch)
  * Type `git pull origin master` (Fetch the changes and merges them)
  * Type `git checkout -b pull-request-test` (Create a new branch.Here new branch is called `pull-request-test`)
  * Type `subl .` (Open the file in sublime and type some texts in it)
  * Type `git status` (Allow to see what changes have been made since last time saved)
  * Type `git add [file name here]`
  * Type `git commit - m "Add these into this file"`
  * Type `git push origin pull-request-test` (Pushing this branch to the Github repository)
* Go to the web browser and look at the repository that you forked.
  * Click on the `Compare and pull request` button
  * Select `master` for the base and select `pull-request-test` for the compare button.
  * Click on the `Create pull request`
  * Click on the `Merge pull request` button.
  * Confirm the merge and check the file if the changes was merged.

#### Why are pull requests preferred when working with teams?

Pull requests are very useful when working with a team on a project. Each team member can review, modify or contribute to the code. Pull requests are also preferred to let other team members know about the changes and these changes won't be merged directly to origin master automatically, so project maintainer or main author can review and integrate the changes into the master.

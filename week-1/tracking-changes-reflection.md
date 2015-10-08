

Note: If you are looking for 1.1 to 1.4 reflections, please go to the following link:https://github.com/f-ocal/phase-0/blob/master/week-1/reflections.md

# Release 5 : Reflect
### Using your command line, create a new file called tracking-changes-reflection.md in the week-1 directory.

#### How does tracking and adding changes make developers' lives easier?

Whenever developers make changes into the content of the files, Git keeps tracks of the file versions, so they can easily go back to the prevision version of the file to retun to the previous staged commits.

#### What is a commit?

Commit is a staged snapshot of the code that you record the changes in the working direcotry and you commit to those changes. Developers will have opportunity to keep keep the snapshots in their local repositories until they publish to the central repositories.

#### What are the best practices for commit messages?

* Describe at high level what was done to the change or revision with some addressing.

* There should be guideliness on how much should be done on a single commit. If there are a lot of changes in the content under a single commit message, it can raise some problems to collaborate with the other changes within your team.

* Frequent commit messages with identification of the changes makes easier to work or roll back on any version of the project.

#### What does the HEAD^ argument mean?

  HEAD^ is the last checked out commit. In more general, it is the current branch you are in.

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
  * type `git add [filename]`
  * type `git commit -m [Your Message here]`
  * type `git push`
  * enter your username and password

#### What is a pull request and how do you create and merge one?

Pull request is fetching the changes from the remote repository and integrate with the repository on GitHub. To create a pull request, please refer to the following steps:

* Go to your Github profile and fork a repository to your own repository
* Go the terminal (Shortcut: hold Command and press Space)
  * Type `git checkout master` (To Check your repository locally and remotely if there is any different versions)
  * Type `git pull origin master` (Fetches changes and merges them)
  * Type `git checkout -b pull-request-test` (Create a new branch.Here new branch is called `pull-request-test`)
  * Type `subl .` (Open the file in sublime and type some texts in it)
  * Type `git status` (Check the chnages)
  * Type `git add [file name here]`
  * Type `git commit - m "Type your message here"`
  * Type `git push origin pull-request-test` (Pushing this branch to the Github repository)
* Go to the web browser and look at the repository that you forked.
  * Click on the `Compare and pull request` button
  * Select `master` for the base and select `pull-request-test` for the compare button.
  * Click on the `Create pull request`
  * Click on the `Merge pull request` button.
  * Confirm the merge and check the file if the changes was merged.

#### Why are pull requests preferred when working with teams?

Each team member can modify, amend or contribute to the code. Pull requests are very useful to let other team members to know that you have made changes and then project maintainer can integrate the code into the master.

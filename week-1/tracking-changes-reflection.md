#1.5 Tracking Changes Reflection
How does tracking and adding changes make developers' lives easier?
It allows developers to see their progress. It could also be useful for identifying bugs or implementing a rollback. 

What is a commit?
A commit is a snapshot of approved code. Essentially it is a save or a restore point for developers.

What are the best practices for commit messages?
Commit messages should be short and in the imperative form.

What does the HEAD^ argument mean?
HEAD^ is the previous commit. HEAD~X is the xth commit(x is some variable).

What are the 3 stages of a git change and how do you move a file from one stage to the other?
First you track changes by creating a feature branch using the "git checkout -b" command. Secondly, you make the changes by editing the file and adding it via the "git add" and "git commit -m" command. Lastly, you merge and push the changes to the master by using the various terminal commands.

Write a handy cheatsheet of the commands you need to commit your changes?
git add & git commit -m

What is a pull request and how do you create and merge one?
A pull request merges the changes into the master branch. You can create one utilizing the github website.

Why are pull requests preferred when working with teams?
It allows for collaboration.
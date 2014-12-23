# Contributing to RAVN

## Before You Start

Anyone wishing to contribute to the **[raptorbird/RAVN](https://github.com/raptorbird/RAVN)** project **MUST read & sign the [Electronic RaptorBird Contribution License Agreement](http://goravn.com/cla)**. The RAVN team is legally prevented from accepting any pull requests from users who have not signed the CLA first.

## Reporting Bugs

1. Always update to the most recent master release; the bug may already be resolved.

2. Search for similar issues on the [Ravn Support][s]; it may already be an identified problem.

4. If this is a bug or problem that **requires any kind of extended discussion -- open [a topic on forum, category support][s] about it**.

5. If possible, submit a Pull Request with a failing test. If you'd rather take matters into your own hands, fix the bug yourself (jump down to the "Contributing (Step-by-step)" section).

6. When the bug is fixed, we will do our best to update the Support topic.

## Requesting New Features

1. Do not submit a feature request on GitHub; all feature requests on GitHub will be closed. Instead, visit the **[RAVN forum, features category](https://forum.goravn.com/c/features)**, and search this list for similar feature requests. It's possible somebody has already asked for this feature or provided a pull request that we're still discussing.

2. Provide a clear and detailed explanation of the feature you want and why it's important to add. You may also want to provide us with some advance documentation on the feature, which will help the community to better understand where it will fit.

3. If you're a Rock Star programmer, build the feature yourself (refer to the "Contributing (Step-by-step)" section below).

## Contributing (Step-by-step)

1. Clone the Repo:

        git clone git://github.com/raptorbird/RAVN.git

2. Create a new Branch:

        cd RAVN
        git checkout -b new_ravn_branch

 > Please keep your code clean: one feature or bug-fix per branch. If you find another bug, you want to fix while being in a new branch, please fix it in a separated branch instead.

3. Code
  * Adhere to common conventions you see in the existing code
  * Include tests, and ensure they pass
  * Search to see if your new functionality has been discussed on [the RAVN forum](https://forum.goravn.com/c/features), and include updates as appropriate

4. Follow the Coding Conventions
  * two spaces, no tabs
  * no trailing whitespaces, blank lines should have no spaces
  * use spaces around operators, after commas, colons, semicolons, around `{` and before `}`
  * no space after `(`, `[` or before `]`, `)`
  * avoid `return` when not required

  > However, please note that **pull requests consisting entirely of style changes are not welcome on this project**. Style changes in the context of pull requests that also refactor code, fix bugs, improve functionality *are* welcome.

5. Commit

  For every commit please write a short (max 72 characters) summary in the first line followed with a blank line and then more detailed descriptions of the change. Use markdown syntax for simple styling.

  **NEVER leave the commit message blank!** Provide a detailed, clear, and complete description of your commit!


6. Update your branch

  ```
  git fetch origin
  git rebase origin/master
  ```

7. Fork

  ```
  git remote add mine git@github.com:<your user name>/RAVN.git
  ```

8. Push to your remote

  ```
  git push mine new_ravn_branch
  ```

9. Issue a Pull Request

  Before submitting a pull-request, clean up the history, go over your commits and squash together minor changes and fixes into the corresponding commits. You can squash commits with the interactive rebase command:

  ```
  git fetch origin
  git checkout new_ravn_branch
  git rebase origin/master
  git rebase -i

  < the editor opens and allows you to change the commit history >
  < follow the instructions on the bottom of the editor >

  git push -f mine new_ravn_branch
  ```


  In order to make a pull request,
  * Navigate to the RAVN repository you just pushed to (e.g. https://github.com/your-user-name/RAVN)
  * Click "Pull Request".
  * Write your branch name in the branch field (this is filled with "master" by default)
  * Click "Update Commit Range".
  * Ensure the changesets you introduced are included in the "Commits" tab.
  * Ensure that the "Files Changed" incorporate all of your changes.
  * Fill in some details about your potential patch including a meaningful title.
  * Click "Send pull request".

  Thanks for that -- we'll get to your pull request ASAP, we love pull requests!

10. Responding to Feedback

  The RAVN team may recommend adjustments to your code. Part of interacting with a healthy open-source community requires you to be open to learning new techniques and strategies; *don't get discouraged!* Remember: if the RAVN team suggest changes to your code, **they care enough about your work that they want to include it**, and hope that you can assist by implementing those revisions on your own.

  > Though we ask you to clean your history and squash commit before submitting a pull-request, please do not change any commits you've submitted already (as other work might be build on top).



[s]: https://forum.goravn.com/c/support
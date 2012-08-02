![git-lava](https://github.com/chrisjaure/git-lava/raw/master/logo.png)

A branching metaphor for git.


Installation
------------

```
sudo make install
```


Example
-------

Let's say you're collaborating on a remote feature branch called 'add-all-the-things' and you need to add one thing. Assuming you've got a local checkout of that branch, you'd do the following:

```
git lava diverge add-one-thing add-all-the-things
# make some changes
git commit -a
```

Since you've completed your task for this branch, you want to update it, merge it with 'add-all-the-things,' push that branch out, and then delete 'add-one-thing.' The following command will do all of that for you.

```
git lava erupt -d
```


Usage
-----

`git lava` - Get usage information.

`git lava <subcommand> help` - Get usage information for a specific subcommand.

`git lava diverge [-b] [-r] <name> [<base>]` - Create a new branch that knows which branch it diverged from. The base branch should be a remote tracking branch and defaults to master. Use the optional `-b` flag to use the current branch as the base branch. When using the `-r` flag, you can provide a remote branch that will be checked out and diverged from. The new branch name will have `-dev` appended to it.

`git lava converge [-f] [<base>]` - Merge the current branch into the base branch. Defaults to the base branch saved by `git lava diverge` or master. By default, a merge commit will be created if there is more than 1 commit. To always fast-forward, use the optional `-f` flag.

`git lava expose [<remote>]` - Push new local branch to optional remote for collaboration. Remote defaults to origin. The local branch is then diverged to continue local development.

`git lava erupt [-dDf] [<base>]` - Same as above, but also push the base branch. By default, a merge commit will be created if there is more than 1 commit. To always fast-forward, use the optional `-f` flag. The optional `-d` flag will delete the current branch. The optional `-D` will delete both the current branch and the merge target.

`git lava melt [<base>]` - Perform an interactive rebase against the remote base branch.

`git lava survey [-d]` - Show commits on current branch that don't exist on the base branch. Optional `-d` flag will show diff. Any extra arguments are passed to git log or git diff.

`git lava flow [<base>]` - Perform a rebase, pulling in changes from the remote base branch.

`git lava base [<name>]` - Shortcut for getting the base branch of the current or specified branch.


Hooks
-----

`pre-lava-converge` - This will be run before a converge or erupt happens.


Credits
-------

Portions of this code have been taken from [gitflow](https://github.com/nvie/gitflow).

Copyright 2010 Vincent Driessen. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY VINCENT DRIESSEN ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL VINCENT DRIESSEN OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those
of the authors and should not be interpreted as representing official policies,
either expressed or implied, of Vincent Driessen.


License
-------

Distributed under the [MIT License](http://creativecommons.org/licenses/MIT/)
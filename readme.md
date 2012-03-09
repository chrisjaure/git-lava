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
git lava flow -d
```


Usage
-----

`git lava` - Get usage information.

`git lava <subcommand> help` - Get usage information for a specific subcommand.

`git lava diverge <name> [<base>]` - Create a new branch that knows which branch it diverged from. The base branch should be a remote tracking branch and defaults to master.

`git lava converge [-m] [<base>]` - Merge the current branch into the base branch. Defaults to the base branch saved by `git lava diverge` or master. The optional `-m` flag will force a merge commit.

`git lava erupt [-dm] [<base>]` - Same as above, but also push the base branch. The optional `-d` flag will delete the current branch. The optional `-m` flag will force a merge commit.

`git lava melt [<base>]` - Perform an interactive rebase against the remote base branch.

`git lava examine [-d] [<base>] ` - Show log of current branch that don't exist on the base branch. Optional `-d` flag will show diff.

`git lava flow [<base>]` - Perform a rebase, pulling in changes from the remote base branch.


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
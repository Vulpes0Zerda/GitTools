## GitTools.md

### About
GitTools is a repository with all my little scripts to make the workflow with git just that tad bit faster.

### How To Implement
To get started, clone this project into a folder of your choice.  
Then, add an alias to your `.gitconfig` file like this:
```ini
[alias]
aliasToUse = "!sh ~/pathToScript/thisScript.sh"
```

### Recommended Aliases
If you'd like to avoid the hassle of choosing folders and names, follow this setup:

1. Create a directory named `.scripts` in your user home directory
2. Open your console and navigate to `.scripts`
3. Clone this repo with `git clone https://github.com/Vulpes0Zerda/GitTools.git`
4. Go back to your user folder and open `.gitconfig`
5. Copy the recommended aliases to your `[alias]` category:
```ini
[alias]
pushup = "!sh ~/.scripts/GitTools/pushAllUpstream.sh"
```
6. Enjoy

### Scripts
#### pushAllUpstream.sh
Adds all files and directories to the pending changes, commits them with or without a message and pushes them to a remote branch.
```git
git pushup [<remoteName>] [<branchName>] [-m "commit message"]
```

| Argument | Description |
|----------|-------------|
| `pushup` | The alias to the script, set in your `.gitconfig` file |
| `<remoteName>` | *(optional)* Name of the remote repository. Required only if no default upstream is set |
| `<branchName>` | *(optional)* Name of the remote branch. Required only if no default upstream is set |
| `-m "msg"` | *(optional)* Commit message to use for the commit |

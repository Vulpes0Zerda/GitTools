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
5. Copy the recommendet aliases to your `[alias]` category:
```ini
[alias]
pushup = "!sh ~/.scripts/GitTools/pushAllUpstream.sh"
```
6. Enjoy

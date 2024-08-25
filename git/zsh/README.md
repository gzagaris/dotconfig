# Git Completion in ZSH

## Step 1: Install the scripts

```
cp git-completion.bash ~/.zsh/
cp git-completion.zsh ~/.zsh/
```

## STEP 2: Configure the Shell

Add the following to your `.zshrc`
```
# --- Load Git completion --
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
```

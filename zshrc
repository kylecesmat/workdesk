# Path to my oh-my-zsh installation.
export ZSH=/Users/kyle/.oh-my-zsh

# Set name of the theme to load.
# Files should be in ~/.oh-my-zsh/themes/
ZSH_THEME="kolo"

# disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# how often to auto-update (in days)
DISABLE_UPDATE_PROMPT="true"
UPDATE_ZSH_DAYS=30

# enable command auto-correction
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git osx node zsh-completions history-substring-search github autojump command-not-found)

# zsh history
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# Learn more about what you are opting in to at https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1

# Setup NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Git shortcuts
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias commit="gcmsg"
alias gbd="git branch -D"
alias gs="git status -sb --ignore-submodules"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gpush="git push"
alias gpull="git pull"
alias gpullom="git pull origin master"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gb="git branch"
alias gcb="git checkout -b"
alias gc="git checkout"
alias gc-pr="git fetch origin pull/$1/head:pr/$1 && git checkout pr/$1"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"

################################
###  General Shourtcuts
################################

# Open VS Code by typing code .
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}



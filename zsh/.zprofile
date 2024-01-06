eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=~/bin/:$PATH

alias f='fd --type f --exclude .git | fzf | xargs nvim'
alias '?'=duck


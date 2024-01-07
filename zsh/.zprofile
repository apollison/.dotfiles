eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=~/bin/:$PATH

alias f='fd --hidden --type f --exclude .git | fzf | xargs nvim'
alias '?'=duck


eval "$(/opt/homebrew/bin/brew shellenv)"

alias f='fd --type f --exclude .git | fzf | xargs nvim'

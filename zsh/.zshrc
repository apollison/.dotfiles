
alias vim=nvim
alias vi=nvim
alias v='nvim' # default Neovim config

# alias for .dotfile repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias t=tmux-init

# Prompt setup
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{red}${vcs_info_msg_0_}%f %F{cyan}%~%f: '
#PROMPT='%F{green}%*%f %F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# End prompt setup

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=~/bin/:$HOME/go/bin/:$PATH

alias f='fd --hidden --type f --exclude .git | fzf | xargs nvim'
alias '?'=duck

alias gs='git status'

include () {
    [[ -f "$1" ]] && source "$1"
}

# Add Homebrew's Ruby to the PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_PATH="$HOME/.gem/ruby/3.3.0/bin"
export PATH="$GEM_PATH:$PATH"

include "~/.zlocal"


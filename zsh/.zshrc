
alias vim=nvim
alias vi=nvim
alias v='nvim' # default Neovim config
alias vl='NVIM_APPNAME=nvim-lazyvim nvim' # LazyVim
alias vk='NVIM_APPNAME=nvim-kickstart nvim' # Kickstart

# alias for .dotfile repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Prompt setup
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{red}${vcs_info_msg_0_}%f %F{cyan}%~%f: '
#PROMPT='%F{green}%*%f %F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# End prompt setup


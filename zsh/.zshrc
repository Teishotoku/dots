# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/.zsh/main.zsh-theme
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/icons.zsh

#nvim
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="kitty"
export TERMINAL="kitty"

bindkey -v
export KEYTIMEOUT=1
bindkey ^R history-incremental-search-backward 
bindkey jk vi-cmd-mode
bindkey '^H' backward-kill-word

export LANG="ru_RU.UTF-8"
export LANGUAGE="ru_RU.UTF-8"
export LC_COLLATE="ru_RU.UTF-8"
export LC_CTYPE="ru_RU.UTF-8"
export LC_ALL="ru_RU.UTF-8"
export OPENER='rifle' 
#THEMES
#PROMPT='%F{050}%n%f %F{010}%~%f 󰣇  '

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
setopt extendedglob
_comp_options+=(globdots)

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

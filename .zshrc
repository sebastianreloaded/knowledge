export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context aws dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_ALWAYS_SHOW_USER=true

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions", use:"zsh-autosuggestions.zsh"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
# needs aws installed: brew install awscli
zplug "plugins/aws",   from:oh-my-zsh

export DEFAULT_USER="$USER"
zplug load

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sopel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

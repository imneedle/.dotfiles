# Aliases
alias ll='ls -alFh'

# Vim mode in terminal
bindkey -v
KEYTIMEOUT=1  # no delay when pressing escape

# Better TAB auto-complete
autoload -U compinit; compinit
setopt MENU_COMPLETE  # TAB automatically selects first item
setopt GLOBDOTS       # TAB select hidden .files and .dirs
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' menu select
bindkey '^[[Z' reverse-menu-complete

# Better zsh history management
setopt SHARE_HISTORY       # prallel sessions use the same history
setopt HIST_SAVE_NO_DUPS   # don't save duplicates in hist file
setopt HIST_REDUCE_BLANKS  # don't store blank lines in hist file

# Pure prompt
fpath+=("$ZDOTDIR/plugins/pure")
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:branch color yellow
prompt pure

# ZSH auto-suggestions plugin
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
bindkey '^ ' autosuggest-accept


# Add Homebrew to $PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update PATH variable
PATH="$PATH:$HOME/.bin"
export PATH

# Moving ~/.lesshst file
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# Moving ~/.lesshst file
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# Moving the ~/.rustup directory
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Moving ~/.cargo directory
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Update $PATH variable
eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew
PATH="$CARGO_HOME/bin:$PATH"              # Rust
PATH="$HOME/.bin:$PATH"                   # Personal scripts
export PATH

# Add Homebrew to $PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update PATH variable
PATH="$PATH:$HOME/.bin"
export PATH

# Moving ~/.lesshst file
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# Moving the ~/.rustup directory
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Moving ~/.cargo directory
export CARGO_HOME="$XDG_DATA_HOME/cargo"

PATH="$CARGO_HOME/bin:$PATH"              # Rust

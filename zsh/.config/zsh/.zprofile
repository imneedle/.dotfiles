# Moving ~/.lesshst file
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# Moving the ~/.rustup directory
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Moving ~/.cargo directory
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Configuration for Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home"

# Update $PATH variable
eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew
PATH="$CARGO_HOME/bin:$PATH"              # Rust
PATH="$HOME/.bin:$PATH"                   # Personal scripts
PATH="$JAVA_HOME/bin:$PATH"               # Java
export PATH

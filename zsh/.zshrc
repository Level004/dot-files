# Enable zsh profiling for debugging
# zmodload zsh/zprof

# Set encoding
export LC_ALL=en_US.UTF-8
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# -------------------------------------------------------------------
# Set dotfile paths for easier editing.
# -------------------------------------------------------------------
export DOTFILES=$HOME/documents/code/dot-files
export ZSH=$DOTFILES/zsh
export MODULES=$ZSH/modules

# -------------------------------------------------------------------
# Report time and code stuff.
# -------------------------------------------------------------------
# display how long all tasks over 10 seconds take
export REPORTTIME=10

# define the code directory
# # This is where my code exists and where I want the `c` autocomplete to work from exclusively
if [[ -d ~/code ]]; then
    export CODE_DIR=~/code
fi

# -------------------------------------------------------------------
# Load utils file to activate helpers
# -------------------------------------------------------------------
source $ZSH/utils.zsh

# -------------------------------------------------------------------
# Load file to determine which modules are active
# -------------------------------------------------------------------
# source $ZSH/load.zsh

# -------------------------------------------------------------------
# Load config
# -------------------------------------------------------------------
# Function to load all ZSH config
for file in $ZSH/config/*; do
    source "$file"
done

# -------------------------------------------------------------------
# Load all custom files
# -------------------------------------------------------------------
# Function to load all custom files, if you break it, it's on you.
for file in $ZSH/custom/custom_*; do
    source "$file"
done

export ALTERNATE_EDITOR="nano"
export GPG_TTY=$(tty)

keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(cd "$PWD" && pwd -W)"
}
precmd_functions+=(keep_current_path)


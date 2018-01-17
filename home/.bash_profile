echo "bash_profile"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add paths
# Libreoffice
PATH="$PATH:/Applications/Libreoffice.app/Contents/MacOS"
# qmake
PATH="$(brew --prefix qt@5.5)/bin:$PATH"
# mysql client
PATH="$PATH:/usr/local/opt/mysql@5.6/bin"
export PATH

# load dedicated source files
for file in ~/.{appearance,exports,aliases,gitcompletion,sshcompletion,historyrc}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Load NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Use .envrc to set environment variables
eval "$(direnv hook bash)"

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Enable iterm shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export PATH="/usr/local/heroku/bin:$PATH"

if [[ $(uname -m) == "arm64" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi
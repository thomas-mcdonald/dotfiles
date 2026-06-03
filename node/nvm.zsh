export NVM_DIR="$HOME/.nvm"

if type brew &>/dev/null; then
  local nvm_prefix="$(brew --prefix nvm 2>/dev/null)"
  if [[ -s "$nvm_prefix/nvm.sh" ]]; then
    source "$nvm_prefix/nvm.sh"
    [[ -s "$nvm_prefix/etc/bash_completion.d/nvm" ]] && source "$nvm_prefix/etc/bash_completion.d/nvm"
  fi
else
  local nvm_base_dirs=(
    "/opt/homebrew/opt/nvm"
    "/usr/local/opt/nvm"
  )

  for nvm_base in $nvm_base_dirs; do
    if [[ -s "$nvm_base/nvm.sh" ]]; then
      source "$nvm_base/nvm.sh"
      [[ -s "$nvm_base/etc/bash_completion.d/nvm" ]] && source "$nvm_base/etc/bash_completion.d/nvm"
      break
    fi
  done
fi

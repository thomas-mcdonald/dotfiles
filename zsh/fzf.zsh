# Set up fzf key bindings and fuzzy completion if fzf is installed
if (( $+commands[fzf] )); then
  # Try modern method first (fzf 0.48.0+)
  if fzf --zsh &>/dev/null; then
    source <(fzf --zsh)
  else
    # Fall back to sourcing individual files for older versions
    # Check common installation locations
    local fzf_base_dirs=(
      "/usr/share/doc/fzf/examples"
      "/usr/share/fzf"
      "$HOME/.fzf/shell"
      "/opt/homebrew/opt/fzf/shell"
      "/usr/local/opt/fzf/shell"
    )

    for fzf_base in $fzf_base_dirs; do
      if [[ -f "$fzf_base/key-bindings.zsh" ]]; then
        source "$fzf_base/key-bindings.zsh"
        [[ -f "$fzf_base/completion.zsh" ]] && source "$fzf_base/completion.zsh"
        break
      fi
    done
  fi
fi

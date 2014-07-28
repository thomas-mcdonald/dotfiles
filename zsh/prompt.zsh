autoload colors && colors

# https://github.com/benhoskings/dot-files/blob/master/files/.zsh/prompt
tilde_or_pwd() {
  echo $PWD | sed -e "s/\/Users\/$USER/~/"
}

# export PROMPT=$'\n$(rb_prompt) in $(directory_name) $(git_dirty)$(need_push)\n› '
export PROMPT=$'%{\e[0;%(?.32.31)m%}>%{\e[0m%} '
set_prompt () {
  export RPROMPT=$'%{\e[0;90m%}$(tilde_or_pwd)$(git_cwd_info)%{\e[0m%}'
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}

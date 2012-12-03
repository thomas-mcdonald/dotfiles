autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

# This keeps the number of todos always available the right hand side of my
# command line. I filter it to only count those tagged as "+next", so it's more
# of a motivation to clear out the list.
todo(){
  if $(which todo.sh &> /dev/null)
  then
    num=$(echo $(todo.sh ls +next | wc -l))
    let todos=num-2
    if [ $todos != 0 ]
    then
      echo "$todos"
    else
      echo ""
    fi
  else
    echo ""
  fi
}

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

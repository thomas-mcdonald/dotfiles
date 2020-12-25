#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

# load homebrew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

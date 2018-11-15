# ----- Customize Shell prompt -----

export PS1="\[\e[0;32m\]\u: \[\e[0;36m\]\w\n\[\e[0;32m\]\$ \[\e[0m\]"

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# ----- Show Git author config -----

alias gitAuthor='gitName=$(git config user.name) ; gitEmail=$(git config user.email) ; echo "$gitName <$gitEmail>"'

# ----- Open favorite editor -----

code() {
  editor='Visual Studio Code'
  args=''
  for arg in "$@"
  do
      args="$args $arg" # concatenate arguments
  done
  if [ ! "$args" ]; then
    args='./' # set default argument
  fi
  open -a "$editor" $args # open requested directory or listed files
}

# ----- NVM DIR -----

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----- Welcome -----

echo "Welcome back Stéphane!"

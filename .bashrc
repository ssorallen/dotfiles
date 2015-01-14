alias g="git"
alias ls="ls -aGp"
alias server="python -m SimpleHTTPServer"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\w\[$(tput setaf 2)\]]\[$(tput setaf 4)\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"


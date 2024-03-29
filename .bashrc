# Initialize [`rbenv`](https://github.com/sstephenson/rbenv) to manage Ruby
# versions if it exists.
if which rbenv > /dev/null; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)";
fi

# Allow a user-specific bin directory as a subdir of the home directory. This is
# used for linking to Sublime Text's `subl` shortcut, for example.
export PATH=$PATH:~/bin

# Improved Sublime Text command that opens a .sublime-project file in the target
# directory if it exists, otherwise falls back to default behavior.
sbl() {
  if [[ $# -lt 1 ]]
  then
    subl
    return
  fi

  sublime_project_file=`find $1 -name "*.sublime-project" -maxdepth 1`
  if [[ -z $sublime_project_file ]]
  then
    subl $1
  else
    subl $sublime_project_file
  fi
}

# Start a SimpleHTTPServer on 127.0.0.1 (rather than the default 0.0.0.0). The
# first argument after the command can be provided to change the port.
server() {
  PORT=${1:-8000}
  echo "Serving HTTP on 127.0.0.1 port ${PORT} ..."
  python -c "import BaseHTTPServer as bhs, SimpleHTTPServer as shs; bhs.HTTPServer(('127.0.0.1', ${PORT}), shs.SimpleHTTPRequestHandler).serve_forever()"
}

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\w\[$(tput setaf 2)\]\[$(tput setaf 4)\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"

# Who doesn't like VIM?
export EDITOR=vi

# Disable XON/XOFF in order to enable Ctrl-S forward searching through command
# history.
#
# See http://stackoverflow.com/a/25391867/368697
[[ $- == *i* ]] && stty -ixon

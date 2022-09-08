# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/zsh

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Start a SimpleHTTPServer on 127.0.0.1 (rather than the default 0.0.0.0). The
# first argument after the command can be provided to change the port.
server() {
  PORT=${1:-8000}
  echo "Serving HTTP on 127.0.0.1 port ${PORT} ..."
  python -c "import BaseHTTPServer as bhs, SimpleHTTPServer as shs; bhs.HTTPServer(('127.0.0.1', ${PORT}), shs.SimpleHTTPRequestHandler).serve_forever()"
}

# Who doesn't like VIM?
export EDITOR='vim'

# Disable XON/XOFF in order to enable Ctrl-S forward searching through command
# history.
# See http://stackoverflow.com/a/25391867/368697
[[ $- == *i* ]] && stty -ixon

# Add Visual Studio Code command (code)
# See https://code.visualstudio.com/docs/setup/mac
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# Sleep the display, which then requires a password (go AFK)
alias afk="pmset displaysleepnow"

# Simpler Git access along with tab completion for "g"
alias g="git"

# Preferred `ls` output.
# * -G: enable colorized output
# * -a: include directories starting with a dot (.)
# * -p: write a slash (/) after each directory
alias ls="ls -Gap"

# "exclude grep". An alias for `grep` that excludes common directories that
# shouldn't be searched.
alias xg="grep -I --exclude-dir=node_modules -r"

# Prompt
PS1="\[\e[91m\][\u@\h]\[\e[0m\] \[\e[95m\]\w\[\e[31m\]\n\[\e[96m\]\t $ \[\e[0m\]"

# CMD+TAB will switch spaces
defaults write com.apple.Dock workspaces-auto-swoosh -bool YES && killall Dock

# Add brew paths
export PATH="/usr/local/sbin:$PATH"
export PATH="~/anaconda3/bin:$PATH"

# Ruby 
export PATH="/usr/local/opt/ruby@2.1/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.1.0/bin/:$PATH"

# Alias
alias ttop='top -R -F -s 10 -o rsize'

# Setting colour scheme 
export CLICOLOR=1 # turns on file color
export LSCOLORS=ExFxCxDxBxEGEDABAGACAD # lightens file colors
export TERM="xterm-256color" # not useful as far as I can tell

# For cask
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
source /usr/local/opt/nvm/nvm.sh

# For pdf-tools
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.11/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

# Conda
. /Users/Talon/anaconda3/etc/profile.d/conda.sh

# For ssh
eval $(ssh-agent) > /dev/null 2> /dev/null

# scp 
function here2mid() {
    scp `pwd`'/'$1 talonchandler@midway.rcc.uchicago.edu:$2
}

function mid2here() {
    scp talonchandler@midway.rcc.uchicago.edu:$1 `pwd`'/'$2 
}

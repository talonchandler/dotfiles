# Prompt
PS1="\[\e[91m\][\u@\h]\[\e[0m\] \[\e[95m\]\w\[\e[31m\]\n\[\e[96m\]\t $ \[\e[0m\]"

# CMD+TAB will switch spaces
defaults write com.apple.Dock workspaces-auto-swoosh -bool YES && killall Dock

# Add brew paths
export PATH="/usr/local/sbin:$PATH"

# Ruby 
export PATH="/usr/local/opt/ruby@2.1/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.1.0/bin/:$PATH"
#export PATH=/usr/local/bin:$PATH

# Alias
alias school='cd ~/GoogleDrive/School/Current'
alias website='ftp tchandler1@50.62.160.27'
alias ttop='top -R -F -s 10 -o rsize'
alias medphys='ssh -X talonchandler@shmi.bsd.uchicago.edu'
alias midway='ssh -X talonchandler@midway.rcc.uchicago.edu'
alias siraf='ssh -X talonchandler@siraf-login.bsd.uchicago.edu'

# Setting colour scheme 
export CLICOLOR=1 # turns on file color
export LSCOLORS=ExFxCxDxBxEGEDABAGACAD # lightens file colors
export TERM="xterm-256color" # not useful as far as I can tell

# For cask
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --caskroom=/opt/homebrew-cask/Caskroom"
source /usr/local/opt/nvm/nvm.sh

# For pdf-tools
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.11/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

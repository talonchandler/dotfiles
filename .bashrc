# Prompt
PS1="\[\e[1;31m\][\u@\h]\[\e[0m\] \[\e[1;35m\]\w\[\e[0m\]\n\[\e[0;37m\]\t $ \[\e[0m\]"

# CMD+TAB will switch spaces
defaults write com.apple.Dock workspaces-auto-swoosh -bool YES && killall Dock

# Add paths
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PATH=/usr/local/bin:$PATH

# Alias
alias school='cd ~/GoogleDrive/School/Current'
alias website='ftp tchandler1@50.62.160.27'
alias ttop='top -R -F -s 10 -o rsize'
alias hw='cp -n ~/GoogleDrive/Templates/hw.tex ./solution.tex;cp ~/Google\ Drive/Templates/mcode.sty ./mcode.sty;ls'
alias medphys='ssh -X talonchandler@shmi.bsd.uchicago.edu'
alias midway='ssh -X talonchandler@midway.rcc.uchicago.edu'
alias pw='emacs ~/GoogleDrive/Personal/ID/passwords.gpg'
alias python='python3'
alias wolfram='/Applications/Mathematica.app/Contents/MacOS/MathKernel'

# Setting colour scheme 
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM="xterm-256color"

# For cask
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --caskroom=/opt/homebrew-cask/Caskroom"
source /usr/local/opt/nvm/nvm.sh

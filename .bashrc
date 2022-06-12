# Prompt
PS1="\[\e[91m\][\u@\h]\[\e[0m\] \[\e[95m\]\w\[\e[31m\]\n\[\e[96m\]\t $ \[\e[0m\]"

# Setting colour scheme
export CLICOLOR=1 # turns on file color
export LSCOLORS=ExFxCxDxBxEGEDABAGACAD # lightens file colors
export TERM="xterm-256color"

# Add brew paths
# export PATH="/usr/local/sbin:$PATH"
eval $(/opt/homebrew/bin/brew shellenv)

# Ruby
# export PATH="/usr/local/opt/ruby@2.1/bin:$PATH"
# export PATH="/usr/local/lib/ruby/gems/2.1.0/bin/:$PATH"

# Custom aliases
alias ttop='top -R -F -s 10 -o rsize'
alias size='du -sh * | sort -hr'
alias wifi='osx-wifi-cli' # npm install osx-wifi-cli

# Install iterm integrations
source /Users/talon.chandler/.iterm2_shell_integration.bash

# Turn off zsh warning osxexport BASH_SILENCE_DEPRECATION_WARNING1=
export BASH_SILENCE_DEPRECATION_WARNING=1

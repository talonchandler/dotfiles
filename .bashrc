# Prompt
PS1="\[\e[91m\][\u@\h]\[\e[0m\] \[\e[95m\]\w\[\e[31m\]\n\[\e[96m\]\t $ \[\e[0m\]"

export PATH="~/scripts:$PATH"

# Setting colour scheme
export CLICOLOR=1 # turns on file color
export LSCOLORS=ExFxCxDxBxEGEDABAGACAD # lightens file colors
export TERM="xterm-256color"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/hpc/apps/x86_64/anaconda/2021_09_16/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/hpc/apps/x86_64/anaconda/2021_09_16/etc/profile.d/conda.sh" ]; then
        . "/hpc/apps/x86_64/anaconda/2021_09_16/etc/profile.d/conda.sh"
    else
        export PATH="/hpc/apps/x86_64/anaconda/2021_09_16/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias emacs='emacs -nw'

module load comp_micro
conda activate recorder



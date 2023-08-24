# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eduardglez/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# GUI settings
export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=0

# Syntax highlight manual pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# CUSTOM ALIAS
alias ls='ls --color=auto'
alias ll='ls -AlFh'
alias la='ls -A'
alias l='ls -CF'
# cd but in the windows dir
function cdwin() {
    if [ $# -eq 0 ]; then
        cd /mnt/c/Users/Gonzalez E
    else
        cd "/mnt/c/Users/Gonzalez E/$1"
    fi
}
# create env 
function cenv(){
    python3 -m $1 .venv/
}
function devserv() {
    echo "starting..."
    . .venv/bin/activate
    export FLASK_DEBUG=1
    flask run
    echo "started"
}
# Set the PROMPT_COMMAND to call the update_ps1 function before each prompt is shown
alias vim="nvim"
alias windir="/mnt/c/Users/Gonzalez E/" 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


. "$HOME/.cargo/env"
eval "$(oh-my-posh init zsh --config ~/.poshthemes/cobalt2.omp.json)"

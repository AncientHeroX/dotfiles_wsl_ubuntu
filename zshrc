# Run tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    # Check if inside a tmux session
    if [ -z "$TMUX" ]; then
      # Try to attach to an existing session, otherwise create a new one
      tmux attach-session -t 0 || tmux new-session
    fi

fi
# Enable colors
autoload -U colors && colors

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
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# End of lines added by compinstall

# GUI settings
export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=0

# Syntax highlight manual pages
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# Set LS_COLORS to use the .dircolors file
if [ -f ~/.dircolors ]; then
  eval "$(dircolors -b ~/.dircolors)"
fi

# CUSTOM ALIAS
alias ls='ls -F --color=auto'
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
alias windir="cd '/mnt/c/Users/Gonzalez E/'" 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function fancygit() {
    git log --graph --oneline --decorate --all
}

. "$HOME/.cargo/env"
source /home/eduardglez/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/eduardglez/applications/gradle-8.4/bin
export PATH=$PATH:/home/eduardglez/applications/androidsdkclt/bin

export ANDROID_HOME=$HOME/android
export PATH=$ANDROID_HOME/cmdline-tools/tools/bin/:$PATH
# EMULATOR GOES HERE
# PLATFORM TOOLS GO HERE

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export DISPLAY=:0

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/apache-maven-3.9.8/bin
export PATH=$PATH:~/.local/bin
eval "$(oh-my-posh init zsh --config ~/.poshthemes/cobalt2.omp.json)"



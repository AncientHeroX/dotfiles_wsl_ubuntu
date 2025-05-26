# Enable colors
autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# use the Gnu C Compiler 
#export CC=gcc
#export CXX=gcc

setopt SHARE_HISTORY
setopt autocd nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eduardglez/.zshrc'

# Segfault Core dumps
ulimit -c unlimited

# GUI settings
export DISPLAY=:0
export LIBGL_ALWAYS_INDIRECT=0

# Syntax highlight manual pages
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# CUSTOM ALIAS
alias ls='eza --classify=always' 
alias ll='ls -Alh'
alias la='ls -A'
alias l='ls -CF'
alias lt="eza -lT --hyperlink --icons=always --level=3"
alias bat='batcat --theme="Rose_Pine" --style="plain"'
alias cd="z"
alias rm='_remove'
alias tp="trash-put"
alias fixmyterminalinput='stty sane'
alias top='btop'
alias ts='tmux-sessionizer'

function makehome()
{
    export BASE=$(pwd)
    alias cx="z $BASE || z"
}
function togglecapsbtn()
{
    if test -f '/etc/systemd/system/multi-user.target.wants/keyd.service'; then
        sudo systemctl disable --now keyd
        echo "Keyd disabled"
    else
        sudo systemctl enable --now keyd
        echo "Keyd enabled"
    fi
}
function decrypt()
{
    if  [ $# -eq 0 ]; then
        echo "No file"
    else
        openssl aes-256-cbc -d -pbkdf2 -out "$1.out" -in $1
    fi

}
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

export BASE=$(pwd)
alias cx="z $BASE || z"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/apache-maven-3.9.8/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/local/pgsql/bin
export PATH=$PATH:/home/eduardglez/applications/gradle-8.4/bin
export PATH=$PATH:/home/eduardglez/applications/androidsdkclt/bin
export PATH=$PATH:/home/eduardglez/.keymapp
export PATH=$PATH:/home/eduardglez/.zig
export PATH=$PATH:/home/eduardglez/.local/bin
export PATH=$PATH:/home/eduardglez/.local/go/bin

export ANDROID_HOME=$HOME/android
export PATH=$ANDROID_HOME/cmdline-tools/tools/bin/:$PATH
export EDITOR="nvim"
export TERMINAL=wezterm
export REDIS_JSON_SO=/home/eduardglez/Downloads/RedisJSON/target/release/librejson.so
export PYTHONPATH=/bin/python3

eval "$(oh-my-posh init zsh --config ~/.poshthemes/rose_pine.omp.json)"
alias chTheme='bash -c  "$(wget -qO- https://git.io/vQgMr)"'

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# ZSH AUTOCOMPLETE
export ZSH_AUTOSUGGEST_MANUAL_REBIND=true
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^f' autosuggest-accept
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
setopt completealiases
# End of lines added by compinstall

figlet -c $USER"_deb_" | lolcat 

# bun
export BUN_INSTALL="$HOME/.bun"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	command rm -f -- "$tmp"
}
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


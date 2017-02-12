# Path to your oh-my-zsh installation.
export ZSH=/home/fragmentado/.oh-my-zsh
# tmux variables
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

ZSH_THEME="hack"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=23

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

# User configuration
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/share/python:/usr/sbin:/usr/bin/python"
export PATH="$PATH:/opt/metasploit-framework"
export EDITOR="/usr/bin/vim"
# virtualenvwrapper {{{
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
# }}}
# rbenv (ruby){{{
export PATH="$PATH:$HOME/.rbenv/shims:$HOME/.rbenv/bin"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"
# }}}
export DISPLAY=:0

source $ZSH/oh-my-zsh.sh

# disable ctrl+s
stty -ixon

# Aliases {{{
uni(){cd ~/Dropbox/'II_2016_2017'/1-semestre/"$*"}
v(){vim "$*"}
book(){
  if [ "$*" ]; then
    git clone https://github.com/orggue/nerdbook-studio.git "$*" ; cd "$*" ; npm install ; node init.js
  else
    git clone https://github.com/orggue/nerdbook-studio.git ; cd nerdbook-studio ; npm install ; node init.js
  fi
}
alias someter="TERM=linux ssh -X a651348@hendrix01.cps.unizar.es"
someterup(){
  if [ "$*" ]; then
    scp "$*" a651348@hendrix01.cps.unizar.es:/home/a651348/Documents
  else
    echo Error
  fi
}
someterdown(){
  if [ "$*" ]; then
		scp -r a651348@hendrix01.cps.unizar.es:"$*" .
  else
    echo Error
  fi
}
pi(){
  if [ "$*" ]; then
    ssh pi@"$*"
  else
    ssh pi@nas.jorgechato.com
  fi
}
# record {{{
rec(){
  if [ "$*" ]; then
    ~/APP/asciinema/asciinema rec "$*"
  else
    ~/APP/asciinema/asciinema
  fi
}
play(){
  if [ "$*" ]; then
    ~/APP/asciinema/asciinema play "$*"
  else
    ~/APP/asciinema/asciinema
  fi
}
# }}}
# psql {{{
pypsql(){
  if [ "$*" ]; then
    psql -U fragmentado -d "$*" -h localhost
  else
    echo 'ERROR:: You forgot add the db name in psql -U fragmentado -d <<database name>> -h localhost'
  fi
}
# }}}
# irc
alias irssi='TERM=screen-256color irssi'
# sudo {{{
alias eject="sudo eject"
alias ifconfig="sudo ifconfig"
alias airodump-ng="sudo airodump-ng"
alias airmon-ng="sudo airmon-ng"
# }}}
alias apt="sudo apt-get"
alias gip="ip route"
alias py="python"
alias pyclean="rm -rf **/*.pyc"
alias rm="rm -i"
alias o="xdg-open"
alias tweet="rainbowstream"
alias zshconfig="vim ~/.zshrc"
alias vimcolor="cd ~/.vim/color"
alias vimconfig="vim ~/.vimrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias list="v /etc/apt/sources.list"
alias links="links2"
alias ndate="(echo '日本国' && TZ='Japan' date) | cowsay -f beavis.zen"
alias herokulog="heroku logs --tail"
alias terminatorconfig="vim ~/.config/terminator/config"
alias encoder="java -jar ~/.pentest/rubber-ducky/Encoder/encoder.jar"
alias hosts="vim /etc/hosts"
alias ly="teamocil"
alias horario="xdg-open ~/Dropbox/II_2016_2017/res/horario/public/horario-2016-17.pdf"
alias n4="fortune vN4 | cowsay -f three-eyes -e -- && echo -e '\e[33m['https://quizlet.com/106562829/vocabulario-noken-4-hiraganakanjiespanol-flash-cards/']\e[0m\n'"
#alias two="xrandr --listproviders && xrandr --setprovideroutputsource 1 0 && xrandr --setprovideroutputsource 2 0"
# Scripts
alias number="python ~/APP/Scipts/number.py"
alias name="python ~/APP/Scipts/name.py"
alias color="python ~/APP/Scripts/colortrans.py"
alias talk="~/APP/bash/talk.sh"
alias bitcoin="~/APP/bash/bitcoin.sh"
# }}}

#fuck
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"

# terminator with 256 colors to vim
export TERM="xterm-256color"

if [[ -n "$TMUX" ]] && [[ ! -e "/root/.automatic_start_occurred" ]];then
  fortune vN4 | cowsay -f three-eyes -e -- && echo -e "\e[33m['https://quizlet.com/106562829/vocabulario-noken-4-hiraganakanjiespanol-flash-cards/']\e[0m\n"
fi

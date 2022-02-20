#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

alias ls="ls --color=auto "
alias lsD="du -ah --max-depth 1"
alias lsT="ls --color=auto -lt"
alias ll="ls -l"
alias vic="neofetch --source $HOME/Pictures/neofetch/vic.txt"
#alias vic="neofetch --source $HOME/Pictures/neofetch/bart.txt"
alias cop="maim"
alias xre="xrdb ~/.Xresources"
alias str="straw-viewer --player=mpv"
alias ytbV="youtube-viewer --player=mpv"
alias r="ranger"
alias s="source ~/.bashrc"
alias obsS="ffmpeg -f flv -listen 1 -i rtmp://localhost:1935/live/test -f v4l2 -vcodec rawvideo /dev/video5"
alias clock="tty-clock"
alias neo="neomutt"
alias nit="nitrogen ~/Pictures/backgrounds/wallpapers"
#alias rC="./ ~/Documents/personal/GNU_Linux_terminal/rclone_OneDrive_GoogleDrive/vitorCommand"
alias cam="sudo modprobe v4l2loopback devices=1 card_label="vic1" exclusive_caps=1,1,1,1,1,1,1,1"
alias cal1="calcurse"
alias internet="cbm"

#alias emS="~/.emacs.d/bin/doom sync"

## NNN Configuration
alias n3="nnn"
export NNN_BMS="d:~/Documents;T:~/Downloads/Telegram Desktop;t:~/Documents/EPN/2020A/teletrabajo"
export NNN_COLORS="2136" # use a different color for each context
export NNN_TRASH=1 # trash (needs trash-cli) instead of delete
export NNN_PLUG='f:finder;o:fzopen;d:diffs;t:nmount;v:imgview;T:preview-tabbed;P:preview-tui'
export NNN_FIFO=/tmp/nnn.fifo

## Colors
. ~/.color #https://gist.github.com/keithkim/5144732

### SHOPT for bash
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

# shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      #*.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      #*.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages


PS1="\[$IBlack\]┌—————(\[$BWhite\]\u\[$IBlack\])—————(\[$IBlue\]\w\[$IBlack\]) \n└> \[$BRed\]$ \[$White\]"

#PS1="\[$UBlue\]\u \[$White\]AT \h IN \[$BGreen\]\W\n ~~~> \[$IWhite\]"
#PS1='[\u@\h \W]\$ '

source $HOME/OpenFOAM/OpenFOAM-6/etc/bashrc
alias of7='source $FOAM_INST_DIR/OpenFOAM-7/etc/bashrc'

#export PATH=$HOME/Downloads/programs/ParaView-64bit/bin
export PATH=$PATH:$HOME/.local/share/paraview/bin
export PATH=$PATH:$HOME/.local/share/JabRef/bin
#export PATH=$PATH:$HOME/.local/share/gmsh/bin
export PATH=$PATH:$HOME/.local/share/ngrok

export INPUT_METHOD="fcitx5"
export GTK_IM_MODULE="fcitx5"
export XMODIFIERS="@im=fcitx5"
export QT_IM_MODULE="fcitx5"
export SDL_IM_MODULE="fcitx5"

export VISUAL=vim
export EDITOR=vim
#export LC_ALL="C"
#export COLORTERM="truecolor"

#For xterm transparency
#[ -n "$XTERM_VERSION" ] && transset-df 1 --id "$WINDOWID" >/dev/null
#[ -n "$TABBED_VERSION"] && transset-df 1 --id "$WINDOWID" >/dev/null

### RANDOM COLOR SCRIPT ###
#/opt/shell-color-scripts/colorscript.sh random

#LS_COLORS=$LS_COLORS:'di=0;34:' ; export LS_COLORS

#PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\$\[\033[00m\] "

# Use this other PS1 string if you want \W for root and \w for all other users:
#PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h\[\033[01;34m\] \W'; else echo '\[\033[01;32m\]\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\$\[\033[00m\] "

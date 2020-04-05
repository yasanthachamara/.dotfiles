##################################################################################################
# Path Variables
##################################################################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$ZSH/custom
export TERM='xterm-256color'
export PYTHON3_PATH='/usr/bin/python3.6'
export PYTHON2_PATH='/usr/bin/python2.7'
export PATH=$PYTHON2_PATH:$PYTHON3_PATH:$HOME/.config/vifm/scripts:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/snap/bin/:$PATH
export EDITOR='vim'

# Customize EXA and LS_COLORS variable to change ls related colors
export EXA_COLORS="ur=0;33:gr=0;33:tr=0;33:ux=0;35:ue=0;35:gx=0;35:tx=0;35:uw=0;36:gw=0;36:tw=0;36:sn=0;36:sb=0;36:uu=0;33:da=0;37"
export LS_COLORS="rs=0:di=0;34:ln=0;36:mh=00:pi=40;33:so=0;35:do=0;35:bd=40;33;0:cd=40;33;0:or=40;31;0:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=0;32:*.tar=0;31:*.tgz=0;31:*.arc=0;31:*.arj=0;31:*.taz=0;31:*.lha=0;31:*.lz4=0;31:*.lzh=0;31:*.lzma=0;31:*.tlz=0;31:*.txz=0;31:*.tzo=0;31:*.t7z=0;31:*.zip=0;31:*.z=0;31:*.Z=0;31:*.dz=0;31:*.gz=0;31:*.lrz=0;31:*.lz=0;31:*.lzo=0;31:*.xz=0;31:*.zst=0;31:*.tzst=0;31:*.bz2=0;31:*.bz=0;31:*.tbz=0;31:*.tbz2=0;31:*.tz=0;31:*.deb=0;31:*.rpm=0;31:*.jar=0;31:*.war=0;31:*.ear=0;31:*.sar=0;31:*.rar=0;31:*.alz=0;31:*.ace=0;31:*.zoo=0;31:*.cpio=0;31:*.7z=0;31:*.rz=0;31:*.cab=0;31:*.wim=0;31:*.swm=0;31:*.dwm=0;31:*.esd=0;31:*.jpg=0;35:*.jpeg=0;35:*.mjpg=0;35:*.mjpeg=0;35:*.gif=0;35:*.bmp=0;35:*.pbm=0;35:*.pgm=0;35:*.ppm=0;35:*.tga=0;35:*.xbm=0;35:*.xpm=0;35:*.tif=0;35:*.tiff=0;35:*.png=0;35:*.svg=0;35:*.svgz=0;35:*.mng=0;35:*.pcx=0;35:*.mov=0;35:*.mpg=0;35:*.mpeg=0;35:*.m2v=0;35:*.mkv=0;35:*.webm=0;35:*.ogm=0;35:*.mp4=0;35:*.m4v=0;35:*.mp4v=0;35:*.vob=0;35:*.qt=0;35:*.nuv=0;35:*.wmv=0;35:*.asf=0;35:*.rm=0;35:*.rmvb=0;35:*.flc=0;35:*.avi=0;35:*.fli=0;35:*.flv=0;35:*.gl=0;35:*.dl=0;35:*.xcf=0;35:*.xwd=0;35:*.yuv=0;35:*.cgm=0;35:*.emf=0;35:*.ogv=0;35:*.ogx=0;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.md=04;33:README=04;33:Makefile=0;37"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##################################################################################################
# Theme Selection
##################################################################################################
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

##################################################################################################
# User Configurations
##################################################################################################

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"
HISTFILE="$HOME/.cache/zsh_history"
HISTSIZE=5000
SAVEHIST=5000
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Fix missing spacing
ZLE_RPROMPT_INDENT=0
POWERLEVEL9K_LEGACY_ICON_SPACING=true

# Cache directory
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

##################################################################################################
# Plugins
##################################################################################################

# Load plugins: plugins=(rails git textmate ruby lighthouse)
plugins=(
 git
# zsh-autosuggestions
 zsh-syntax-highlighting
 zsh-completions
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

##################################################################################################
# Aliases: to make life easier
##################################################################################################

# Clear commands
alias c="clear"
# Exit commands
alias q="exit"
# System state
alias reboot="sudo /sbin/reboot"
alias poweroff="sudo /sbin/poweroff"
alias halt="sudo /sbin/halt"
alias shutdown="sudo /sbin/shutdown"
# Parenting changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# Change directories commands
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."
# Confirmation
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'
alias rm='rm -Iv --preserve-root'
# Free and Used
alias meminfo="free -m -l -t"
# Get top process eating memory
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
# Get top process eating cpu
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"
# Get server cpu info
alias cpuinfo="lscpu"
# Get GPU ram on desktop / laptop
alias gpumeminfo="grep -i --color memory /var/log/Xorg.0.log"
# Install & Update utilties
alias ins="sudo apt-get install"
alias upd="sudo apt-get update"
# List commands
alias ls='exa --color=always --icons --group-directories-first'
alias lsa='exa -a --color=always --icons --group-directories-first'
alias la='exa -lh -s=extension --time-style=iso --color=always --icons --group-directories-first'
alias laa='exa -lha -s=extension --time-style=iso --color=always --icons --group-directories-first'
alias lt='exa -T -L=3 --color=always --icons --group-directories-first'
alias lta='exa -Ta -L=3 --color=always --icons --group-directories-first'
# History commands
alias h="history"
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"
# Grep commands
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
# Untar
alias untar='tar -zxvf'
alias ut='tar -zxvf'
# Find
alias find='fd'
# Grep commands
alias grep='rg'
# Apps
alias gimp='flatpak run org.gimp.GIMP//stable'
alias calc='eva'
# Vim
alias vim='nvim'
alias v='nvim'
alias sv='sudo nvim'
# Unzip
alias uz='unzip'
# Rebuild font cache
alias rfc='sudo fc-cache -fv'
# Cat command
alias cat='bat'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Syntax highlight
ZSH_HIGHLIGHT_HIGHLIGHTERS=(line main brackets pattern cursor root)

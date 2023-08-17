## -------------------------------------------------------------------------------- DOWNLOAD ONCE
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#pip3 install argcomplete
#activate-global-python-argcomplete
#autoload -U bashcompinit
#bashcompinit

#eval "$(register-python-argcomplete my-awesome-script)"

#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## -------------------------------------------------------------------------------- ALIAS
## -------------------------------- sys
alias sudo='sudo '

alias n="nano"
alias ge="gedit"

alias zs="source ~/.zshrc"
alias zg="ge ~/.zshrc"
alias zt="ge ~/.oh-my-zsh/themes/max.zsh-theme "

alias o="xdg-open ."

alias srb="sudo reboot now"
alias ssd="sudo shutdown now"

## -------------------------------- APT
alias at="sudo apt"

alias i="at install"
alias iy="i -y"
alias u="at update && at upgrade"
alias a="at autoclean && at autoremove"
alias ua="u && a"
alias uy="u -y && sudo snap refresh"
alias ud="at dist-upgrade"
alias uf="at --fix-broken install"
alias uu="uy && ud -y && uf -y"

alias r="sudo dpkg -r"
alias re="sudo dpkg --configure -a"

alias ah="sudo apt-mark hold linux-image-generic linux-headers-generic"  ## block kernel update

## -------------------------------- make
alias mr="make run"
alias ma="make all"
alias mar="make all run"
alias mc="make clean"
alias mca="make clean all"
alias mcar="make clean all run"

## -------------------------------- pip
alias p="pip install"
alias pu="pip install -U"

## -------------------------------- SYSTEMD
alias sd="sudo systemctl"

alias sdrl="sd daemon-reload"
alias sdrf="sd reset-failed"

alias sde="sd enable"
alias sdd="sd disable"
alias sdt="sd start"
alias sdp="sd stop"
alias sds="sd status"

alias sdl="sudo journalctl -u"
alias sdl_d="sudo journalctl --rotate --vacuum-time=1s"

## -------------------------------- IP
alias wan='dig +short myip.opendns.com @resolver1.opendns.com'

## -------------------------------- ETC
alias get_idf='. $HOME/esp/esp-idf/export.sh'

## -------------------------------- CUSTOM
#alias tp0 = "sudo modprobe -r psmouse && sudo modprobe psmouse"
#alias tp1 = "/sbin/rmmod i2c_hid && /sbin/modprobe i2c_hid"


## -------------------------------------------------------------------------------- ZSH
export python="python3"
# Path to oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="max"

plugins=(git zsh-autosuggestions sudo web-search copypath copyfile zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh

## UPDATE
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30
# DISABLE_AUTO_UPDATE="true"

## COMPLETION
ENABLE_CORRECTION="true"
# CASE_SENSITIVE="true"
# make _ and - same : CASE_SENSITIVE must be off
# HYPHEN_INSENSITIVE="true"


## -------------------------------------------------------------------------------- KUBERNETES
#autoload -Uz compinit
#compinit

#source <(kubectl completion zsh)

## -------------------------------------------------------------------------------- ETC




## -------------------------------------------------------------------------------- ZSH DEFAULT
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment if pasting URLs and other text is messed up
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment disables colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment disables auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time stamp shown in the history command output.
# You can set one of the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications, see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"z

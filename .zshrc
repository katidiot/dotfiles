# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=/home/asid/Data/Projects/upstream/gopath
export PATH=$PATH:/home/asid/usr/bin:$GOPATH/bin

# Path to your oh-my-zsh installation.
export ZSH=/home/asid/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast common-aliases dirhistory docker history jsontools kubectl helm kubetail)

source $ZSH/oh-my-zsh.sh

# User configuration
alias v='vim'
alias s='ssh'
alias gg='cd /home/asid/Data/Projects/upstream/'
alias firefox='GTK_THEME=Adwaita:light firefox'
alias -s go=vim
#alias -s py=vim
alias -s txt=vim
alias -g psa='ps aux | grep'
alias cat='bat --theme="Monokai Extended Bright"'

eval `keychain --eval --agents ssh -Q --quiet id_rsa`

# Configure QT5 to work correctly on other DEs
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

source ~/.plevel9k.sh
#bindkey -v
# Use ctrl+w to delete Word and alt+bkspc to delete word (like Vim)

# Use custom keybindings
bindkey -s '^s' 's sysuser@'
bindkey -s '^t' 'mdvmsrv'
bindkey -s '^n' 'lhvmsrv'

# FZF configuration
export FZF_DEFAULT_OPTS='--border --info=inline'
export FZF_COMPLETION_TRIGGER='``'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

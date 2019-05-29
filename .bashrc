# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
#export PS1="\[\e[31m\]\u\[\e[33m\]@\[\e[36m\]\H \[\e[33m\]\w \[\e[34m\]$ \[\e[0m\]"

#export SMARTGITHG_JAVA_HOME=/etc/java-config-2/current-system-vm

#export JAVA_HOME=/etc/java-config-2/current-system-vm

#source /etc/profile.d/bash-completion.sh
#source /usr/share/git/git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export PS1='\[\e[31m\]\u\[\e[33m\]@\[\e[36m\]\H \[\e[33m\]\w$(__git_ps1 " (%s)") \[\e[34m\$ \[\e[0m\]'

alias ll='ls -l'
alias v='vim'
alias s='ssh'

complete -cf sudo

bind '\C-f:unix-filename-rubout'

source /usr/share/git/git-prompt.sh

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/asid/usr/google-cloud-sdk/path.bash.inc ]; then
  source '/home/asid/usr/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/asid/usr/google-cloud-sdk/completion.bash.inc ]; then
  source '/home/asid/usr/google-cloud-sdk/completion.bash.inc'
fi

# Configure QT5 to work correctly on other DEs
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

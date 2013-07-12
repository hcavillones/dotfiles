# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"



BLUE="\[\033[0;34m\]"
DARK_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
DARK_RED="\[\033[1;31m\]"
PS1="\u@\h [\w]> "
PS1="${TITLEBAR}\
$BLUE\u@\h $RED[\w]>$NO_COLOR "
PS2='continue-> '
PS4='$0.$LINENO+ '


#alias ls='/usr/local/Cellar/coreutils/8.14/bin/gls --color=auto'
#LS_COLORS='di=01;33'; export LS_COLORS

# Setup Amazon EC2 Command-Line Tools

# EC2 AMI TOOLS 
#export EC2_HOME=~/.ec2
#export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-PK5IF45XNMPNFI77SXJ25GZB2DBCDF53.pem`
#export EC2_CERT=`ls $EC2_HOME/cert-PK5IF45XNMPNFI77SXJ25GZB2DBCDF53.pem`
export JAVA_HOME=$(/usr/libexec/java_home)

# EC2 ACCESS KEYPAIRS
#export EC2_KEYPAIR_US_EAST_1=`ls $EC2_HOME/pk-socialflow-east.pem`
#export EC2_KEYPAIR_US_WEST_1=`ls $EC2_HOME/pk-socialflow-west.pem`

# EC2 API KEYS
#export AWS_ACCESS_KEY=AKIAJFTYU3S4UNX5M2JQ
#export AWS_SECRET_ACCESS_KEY=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

complete -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //'))" ssh

SSH_ENV="$HOME/.ssh/environment"

#function start_agent {
#     	echo "Initialising new SSH agent..."
#    	 /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
#	echo succeeded
#	chmod 600 "${SSH_ENV}"
#	. "${SSH_ENV}" > /dev/null
#	/usr/bin/ssh-add;
#}
# Source SSH settings, if applicable
#if [ -f "${SSH_ENV}" ]; then
#	. "${SSH_ENV}" > /dev/null
#	#ps ${SSH_AGENT_PID} doesn't work under cywgin
#	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
#
#	start_agent;
#	}
#else
#	start_agent;
#fi 

export PATH=$PATH:/opt/local/bin:/Developer/Tools:/Developer/usr/bin:/usr/local/git/bin:/Developer/usr/sbin:~/.ec2/bin:~/bin

#function commafy() {
#    perl -W -pne 'chomp; s/\s+/,/g'
#    }


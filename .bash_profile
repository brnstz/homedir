umask 002
export PS1="\u@\h:\w$ "
export PAGER="less"
export EDITOR="vim"
export PATH="/usr/local/mongodb/bin:$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH"

export GOPATH="$HOME/go"
export MYGO="$GOPATH/src/github.com/brnstz"

export PATH="$GOPATH/bin:$HOME/bin:$PATH"

export LESS="-RX"

alias ack='ack -i --follow --ignore-dir=dist --ignore-dir=bower_components --ignore-dir=node_modules'
export HISTFILESIZE=10000
export HISTSIZE=10000

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

bind 'set match-hidden-files off'
alias spe='svn propedit svn:externals'
alias spg='svn propget svn:externals'
alias sup='svn update --ignore-externals'
alias sco='svn checkout --ignore-externals'
alias more='less'
alias rpmfu='sudo rpm -ivh --replacepkgs --replacefiles'
alias rpmpush='rhnpush -v --nosig  -c centos5-paperboy-dev-x86'
alias vi='vim'
alias nb='ipython notebook --pylab inline'
alias g="cd $MYGO"
alias encrypt="ansible-vault encrypt --vault-password-file=~/.pwd"
alias decrypt="ansible-vault decrypt --vault-password-file=~/.pwd"

alias instances='aws ec2 describe-instances --filters Name=key-name,Values=bseitz'
alias curlproxy="curl --proxy socks5h://localhost:8001"

#export HOMEBREW_GITHUB_API_TOKEN=`cat $HOME/.homebrew_github_api_token`
export AWS_ACCESS_KEY_ID=`cat $HOME/.aws_access_key_id`
export AWS_SECRET_ACCESS_KEY=`cat $HOME/.aws_secret_access_key`
export AWS_DEFAULT_REGION='us-east-1'

export CLICOLOR=1

export MTA_SUBWAY_TIME_API_KEY=`cat $HOME/.mta_subway_time_api_key`
export MTA_BUS_TIME_API_KEY=`cat $HOME/.mta_bus_time_api_key`

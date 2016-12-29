umask 002
#export PS1="\u@\h:\w$ "
export PS1="\[\e[33m\]\D{%T} \[\e[39m\]\u \[\e[31m\]\w\[\e[39m\]: " export PAGER="less"
export EDITOR="vim"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/mongodb/bin:$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH"

export GOPATH="$HOME/go"
export MYGO="$GOPATH/src/github.com/brnstz"

export PATH="$GOPATH/bin:$HOME/bin:$PATH"

export LESS="-RX"

alias ack='ack -i --ignore-dir=dist --ignore-dir=bower_components --ignore-dir=node_modules'
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
alias s="workon pro_soda && cd ~/git/pro_soda"
alias c="cd ~/Dropbox/interview/crack"
alias b="cd ~/Dropbox/blog"
alias r="cd ~/git/mono"
alias encrypt="ansible-vault encrypt --vault-password-file=~/.pwd"
alias decrypt="ansible-vault decrypt --vault-password-file=~/.pwd"

alias instances='aws ec2 describe-instances --filters Name=key-name,Values=bseitz'
alias curlproxy="curl --proxy socks5h://localhost:8001"
alias python="python3"

#export HOMEBREW_GITHUB_API_TOKEN=`cat $HOME/.homebrew_github_api_token`
#export AWS_ACCESS_KEY_ID=`cat $HOME/.aws_access_key_id`
#export AWS_SECRET_ACCESS_KEY=`cat $HOME/.aws_secret_access_key`
export AWS_DEFAULT_REGION='us-east-1'

export CLICOLOR=1

export BUS_MTA_DATAMINE_API_KEY=`cat $HOME/.mta_subway_time_api_key`
export BUS_MTA_BUSTIME_API_KEY=`cat $HOME/.mta_bus_time_api_key`
export BUS_NJTRANSIT_FEED_USERNAME="brnstz"
export BUS_NJTRANSIT_FEED_PASSWORD=`cat $HOME/.njtransit_feed_password`
export BUS_NJTRANSIT_LIVE_USERNAME="brnstz"
export BUS_NJTRANSIT_LIVE_PASSWORD=`cat $HOME/.njtransit_live_password`
export BUS_DB_USER="bseitz"
export BUS_DB_NAME="bseitz"
export BUS_API_ADDR="0.0.0.0:8000"

export BUS_LOAD_FOREVER="false" 
export BUS_GTFS_URLS="http://web.mta.info/developers/data/nyct/subway/google_transit.zip,http://web.mta.info/developers/data/nyct/bus/google_transit_brooklyn.zip" 
export BUS_ROUTE_FILTER="G,L,B62,B32,B43"
export WORKON_HOME=~/envs
venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi
export ML_API_KEY=`cat $HOME/.ml_api_key`
export HOMEBREW_GITHUB_API_TOKEN=`cat $HOME/.homebrew_github_api_token`
alias mkvirtualenv="mkvirtualenv -p /usr/local/bin/python"

# Stolen from: https://justin.abrah.ms/dotfiles/zsh.html#sec-2-7
# If there is a .venv file, run "workon <contents of that file>"
PROMPT_COMMAND='prompt'
function prompt()
{
    if [ "$PWD" != "$MYOLDPWD" ]; then
        MYOLDPWD="$PWD"
        test -e .venv && workon `cat .venv`
    fi
}
export DAGGER_ENVIRONMENT=dev
export BUS_GTFS_URLS="http://web.mta.info/developers/data/nyct/subway/google_transit.zip"
export BUS_LOG_TIMING=true

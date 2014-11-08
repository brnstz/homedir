umask 002
export PS1="\u@\h:\w$ "
export PAGER="less"
export EDITOR="vim"
export PATH="/usr/local/mongodb/bin:$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH"

export GOPATH="$HOME/go"
export NYTGO="$GOPATH/src/github.com/nytm"

export PATH="$HOME/bin:$PATH"

export DYLD_LIBRARY_PATH=$HOME/inst/instantclient_11_2
export TNS_ADMIN=$HOME/inst/instantclient_11_2
export PATH="$HOME/inst/instantclient_11_2:$PATH"

export GOMAXPROCS=10
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
alias g="cd $NYTGO"

# added by Anaconda 1.8.0 installer
export PATH="/Users/bseitz/anaconda/bin:$PATH"

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm

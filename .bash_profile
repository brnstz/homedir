umask 002
export PS1="\u@\h:\w$ "
export PAGER="less"
export EDITOR="vim"
export PATH="$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Look for system-wide go, otherwise in home dir under mercurial dir
if [ -e "/usr/local/go" ]; then
    export GOROOT="/usr/local/go"
else
    export GOROOT="$HOME/hg/go"
fi
export GOPATH="$HOME/go"
export NYTGO="$GOPATH/src/github.com/nytm/paperboy-go-common"

export PATH="$GOPATH/bin:$HOME/bin:$PATH"

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
alias more='less'
alias rpmfu='sudo rpm -ivh --replacepkgs --replacefiles'
alias rpmpush='rhnpush -v --nosig  -c centos5-paperboy-dev-x86'
alias vi='vim'
alias nb='ipython notebook --pylab inline'
alias g="cd $NYTGO"

# added by Anaconda 1.8.0 installer
export PATH="/Users/bseitz/anaconda/bin:$PATH"

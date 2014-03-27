umask 002
export LESS="-X"
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
export GOPATH="$HOME/inst/go:$HOME/svn/email-platform/go/branches/current:$HOME/Dropbox/algo:$HOME/git"

export PATH="$HOME/bin:$PATH:$HOME/inst/go/bin"

export DYLD_LIBRARY_PATH=$HOME/inst/instantclient_11_2
export TNS_ADMIN=$HOME/inst/instantclient_11_2
export PATH="$HOME/inst/instantclient_11_2:$PATH"

export GOMAXPROCS=10
export LESS="-R"

#alias ack='ack -a -i --follow'
alias ack='ack -i --follow --ignore-dir=dist'
export HISTFILESIZE=10000
export HISTSIZE=10000
bind 'set match-hidden-files off'
alias spe='svn propedit svn:externals'
alias spg='svn propget svn:externals'
alias sup='svn update --ignore-externals'
alias more='less'
alias rpmfu='sudo rpm -ivh --replacepkgs --replacefiles'
alias rpmpush='rhnpush -v --nosig  -c centos5-paperboy-dev-x86'
alias vi='vim'

umask 002
export LESS="-X"
export PS1="\u@\h:\w$ "
export PAGER="less"
export EDITOR="vim"

# Look for system-wide go, otherwise assume in homedir
if [ -e "/usr/local/go" ]; then
    export GOROOT="/usr/local/go"
else
    export GOROOT="/home/bseitz/hg/go"
fi
export GOPATH="$HOME/inst/go:$HOME/svn/email-platform/go/branches/current"
export GOMAXPROCS=10

alias ack='ack -a -i --follow'
export HISTFILESIZE=10000
export HISTSIZE=10000
bind 'set match-hidden-files off'
alias spe='svn propedit svn:externals'
alias spg='svn propget svn:externals'
alias sup='svn update --ignore-externals'
alias more='less'
alias rpmfu='sudo rpm -ivh --replacepkgs --replacefiles'
alias rpmpush='rhnpush -v --nosig  -c centos5-paperboy-dev-x86'

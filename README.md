homedir
=======

Home dir stuff

```bash
# You can't clone into a non-empty directory. Instead, initialize
# an empty git repo and set this as master.
$ cd ~
$ git init .
$ git remote add origin git@github.com:brnstz/homedir.git
$ git pull origin master

# For vim-go stuff to work, you'll need: https://github.com/fatih/vim-go
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

# Copy the iterm2 file over 
$ cp Library/Preferences/com.googlecode.iterm2.plist-initial Library/Preferences/com.googlecode.iterm2.plist
```

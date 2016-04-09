homedir
=======

Home dir stuff

```bash
# You can't clone into a non-empty directory. Instead, initialize
# an empty git repo and set this as origin
$ cd ~
$ git init .
$ git remote add origin git@github.com:brnstz/homedir.git
$ git pull origin master

# Some vim bundle dependencies:
# https://github.com/fatih/vim-go
# https://github.com/chase/vim-ansible-yaml
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
$ git clone https://github.com/chase/vim-ansible-yaml.git ~/.vim/bundle/vim-ansible-yaml


# Copy the iterm2 file over 
$ cp Library/Preferences/com.googlecode.iterm2.plist-initial Library/Preferences/com.googlecode.iterm2.plist
```

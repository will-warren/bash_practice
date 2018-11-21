# config script for macbook pro
#
### takes git name & git email as argvars
 
### covers basic set up
#
#


# homebrew & basics

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install perl@5.18
brew cask install iterm2
brew cask install google-ch
brew install git

# git config
git config --global user.name  $1
git config --global user.email $2

# nvm
curl -0- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## add nvm to .zshrc
export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \.'$NVM_DIR/nvm.sh" >> ~/.zshrch

# make workspaces

mkdir Sites
mkdir Sites/Test
touch Sites/Test/index.html
curl http://example.com  >> Sites/test/index.html

mkdir Utils
mkdir DrawingBoard

# write a few aliases
alias gstat="git status"
alias gchk="git checkout"
alias gcmt="git commit -m"
alias gadda="git add ."
alias grst="git reset"
alias gundo="git checkout --"
alias gmrg="git merge"
alias gpsh="git push"
alias gpll="git pull"
alias grm_local="git branch -D"
alias grm_feature="git push :origin master"
alias gftch="git fetch"
alias gsqa="git squash --merge"

alias bouce="sudo apachectl restart"
alias nano="sudo nano"


# learn node 
sudo npm install learnyounode

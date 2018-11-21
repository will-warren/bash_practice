# config script for macbook pro
#
#  Parameters:
#	name  (string) - the name you wish to use in git
#	email (string) - the email you wish to use in git
#
# covers basic set up

echo "Beginning Config...\n\n"

# homebrew & basics
if test ! $(which brew);
	echo "Installing brew...\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update
brew update

PACKAGES=(
	git
	perl@5.18
	python
	python3
	ruby
)

echo "Installing packages...\n"
brew install${PACKAGES[@]}

echo "Cleaning up...\n"
brew install caskroom/cask/brew-cask

CASKS=(
	iterm2
	google-chrome
	firefoxdeveloperedition
	postman
)

echo "Installing casks...\n"
brew cask install ${CASKS[@]}

# git config
git config --global user.name  $1
git config --global user.email $2


# nvm
echo "Installing NVM...\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# oh-my-zsh
echo "Installing Oh My Zsh...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## add nvm to .zshrc
export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \."$NVM_DIR/nvm.sh" >> ~/.zshrch


# make workspaces
echo "Making workspaces...\n"
mkdir Sites
mkdir Sites/Test
touch Sites/Test/index.html
curl http://example.com  >> Sites/test/index.html

mkdir Utils
mkdir DrawingBoard

# write a few aliases
ALIASES=( ["gstat"]="git status"
	  ["gchk"]="git checkout"
	  ["gcmt"]="git commit -m"
   	  ["gadda"]="git add ."
	  ["grst"]="git reset"
	  ["gundo"]="git checkout --"
	  ["gmrg"]="git merge"
 	  ["gpsh"]="git push"
	  ["gpll"]="git pull"
	  ["grm_local"]="git branch -D"
	  ["grm_feature"]="git push origin master :"
	  ["gftch"="git fetch"
	  ["gsqa"]="git squash --merge"
	  ["bounce"]="sudo apachectl restart"
	  ["nano"]="sudo nano"
)

echo "Writing aliases...\n"

for als in "${!AlIASES[@]}";
    	do export alias $als="${ALIASES[$als]}";
	done

echo "Mac Config Complete!"

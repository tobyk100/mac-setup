###### Brew Setup
if hash brew 2>/dev/null; then
  echo "Brew installed, moving on."
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

###### Git Setup
git config --global user.name "Toby"
git config --global user.email tobyk100@gmail.com
git config --global push.default simple

echo "git name:" `git config --get user.name`
echo "git email:" `git config --get user.email`


gem install homesick
homesick clone https://github.com/tobyk100/dotfiles.git
homesick symlink dotfiles
source ./.brew

npm install -g jshint

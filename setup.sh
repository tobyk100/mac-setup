###### Brew Setup
if hash brew 2>/dev/null; then
  echo "Brew installed, moving on."
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

PATH="/usr/local/bin:$PATH"
source ./.brew

###### Git Setup
git config --global user.name "Toby"
git config --global user.email tobyk100@gmail.com
git config --global push.default simple

echo "git name:" `git config --get user.name`
echo "git email:" `git config --get user.email`


###### Get home stuff
echo $PATH
sudo gem install homesick
homesick clone --recursive tobyk100/dotfiles
homesick symlink dotfiles

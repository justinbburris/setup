binaries=(
  rbenv
  ruby-build
  tree
  ack
  ag
  git
  autojump
  tmux
  vim
  ctags
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup

brew install caskroom/cask/brew-cask

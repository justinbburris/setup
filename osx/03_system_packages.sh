binaries=(
  tree
  ack
  ag
  git
  autojump
  tmux
  nvim
  ctags
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup

brew tap homebrew/cask

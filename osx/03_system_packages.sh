binaries=(
  tree
  ack
  ag
  git
  autojump
  tmux
  nvim
  ctags
  git-delta
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup

brew tap homebrew/cask

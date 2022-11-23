binaries=(
  tree
  ag
  git
  autojump
  tmux
  nvim
  git-delta
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup

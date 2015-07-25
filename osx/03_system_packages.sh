binaries=(
	rbenv
	ruby-build
	node
	tree
	ack
	ag
	git
	autojump
	tmux
	vim
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup

brew install caskroom/cask/brew-cask

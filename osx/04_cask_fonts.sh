fonts=(
	font-source-code-pro
	font-source-code-pro-for-powerline
)
brew tap homebrew/cask-fonts

brew install svn
echo "Installing fonts..."
brew install ${fonts[@]}


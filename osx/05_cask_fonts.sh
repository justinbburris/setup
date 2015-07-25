fonts=(
	font-source-code-pro
	font-source-code-pro-for-powerline
)
brew tap caskroom/fonts

echo "Installing fonts..."
brew cask install ${fonts[@]}


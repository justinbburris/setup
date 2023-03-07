fonts=(
	font-source-code-pro
	font-sauce-code-pro-nerd-font
)
brew tap homebrew/cask-fonts

# Needed to download the fonts from powerline repo
brew install svn

echo "Installing fonts..."
brew install ${fonts[@]}


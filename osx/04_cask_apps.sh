apps=(
	alfred
	dropbox
	google-chrome
	slack
	firefox
	iterm2
	skype
	1password
	dash
	evernote
	harvest
	spectacle
	sketch
	flowdock
)

echo "Installing cask apps"
brew cask install --appdir="/Applications" ${apps[@]}

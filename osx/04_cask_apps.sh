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
)

echo "Installing cask apps"
brew cask install --appdir="/Applications" ${apps[@]}

# One thing you may notice if you're an Alfred user is that you cannot actually launch these apps from Alfred because the actual location of the app is not in /Applications but in /opt/homebrew-cask/Caskroom/.
brew cask alfred link


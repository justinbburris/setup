apps=(
  alfred
  dropbox
  google-chrome
  music-manager
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
  slack
)

echo "Installing cask apps"
brew cask install --appdir="/Applications" ${apps[@]}

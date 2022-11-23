echo "Setting up iTerm2 preferences..."
rm ~/Library/Preferences/com.googlecode.iterm2.plist
ln -s ~/dev/personal/setup/osx/dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

if [ -d "~/Library/Application\ Support/iTerm2/Scripts/" ]; then
  echo "Linking scripts"
  mkdir -p ~/Library/Application\ Support/iTerm2/Scripts/
  ln -s ~/dev/personal/setup/osx/dotfiles/iterm2-scripts ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch
fi

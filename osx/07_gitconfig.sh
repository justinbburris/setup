rm ~/.gitconfig

# dark config
cp ~/dev/personal/setup/osx/dotfiles/gitconfig.template \
  ~/dev/personal/setup/osx/dotfiles/gitconfig.dark
sed -i '' -e "s/SYNTAX_THEME/Solarized\ \(Dark\)/g" \
  ~/dev/personal/setup/osx/dotfiles/gitconfig.dark

# light config
cp ~/dev/personal/setup/osx/dotfiles/gitconfig.template \
  ~/dev/personal/setup/osx/dotfiles/gitconfig.light
sed -i '' -e "s/SYNTAX_THEME/Solarized\ \(Light\)/g" \
  ~/dev/personal/setup/osx/dotfiles/gitconfig.light

gpg --list-secret-keys --keyid-format=long
echo "Please enter GPG signing key"
read signingkey

sed -i '' -e "s/SIGNING_KEY/$signingkey/g" \
  ~/dev/personal/setup/osx/dotfiles/gitconfig.dark

sed -i '' -e "s/SIGNING_KEY/$signingkey/g" \
  ~/dev/personal/setup/osx/dotfiles/gitconfig.light

ln -s ~/dev/personal/setup/osx/dotfiles/gitconfig.dark ~/.gitconfig

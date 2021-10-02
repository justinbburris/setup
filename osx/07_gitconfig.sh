rm ~/.gitconfig

cp ~/dev/personal/setup/osx/dotfiles/gitconfig.template \
  ~/dev/personal/setup/osx/dotfiles/gitconfig

gpg --list-secret-keys --keyid-format=long
echo "Please enter GPG signing key"
read signingkey

sed -i '' -e "s/SIGNING_KEY/$signingkey/g" \
  ~/dev/personal/setup/osx/dotfiles/gitconfig

ln -s ~/dev/personal/setup/osx/dotfiles/gitconfig ~/.gitconfig

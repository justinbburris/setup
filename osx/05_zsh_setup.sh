if [ -d "~/.oh-my-zsh" ]; then
  echo "Installing oh my zsh..."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "Linking configs"
mv ~/.zshrc ~/.zshrc.pre-setup-run
ln -s ~/dev/personal/setup/osx/dotfiles/zshrc ~/.zshrc

if [ -d "~/.zshenv" ]; then
  mv ~/.zshenv ~/.zshenv.pre-setup-run
fi
ln -s ~/dev/personal/setup/osx/dotfiles/zshenv ~/.zshenv

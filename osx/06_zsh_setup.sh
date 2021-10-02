if [ -d "~/.oh-my-zsh" ]; then
  echo "Installing oh my zsh..."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "Linking configs"
rm ~/.zshrc
ln -s ~/dev/personal/setup/osx/dotfiles/zshrc ~/.zshrc

rm ~/.zshenv
ln -s ~/dev/personal/setup/osx/dotfiles/zshenv ~/.zshenv

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm ~/.zshrc
ln -s ~/dev/personal/setup/windows-ubuntu/dotfiles/zshrc ~/.zshrc

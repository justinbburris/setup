# mkdir ~/bin
# cd ~/bin

# echo 'installing rbenv and ruby-build'
# git clone https://github.com/rbenv/rbenv.git
# cd rbenv
# src/configure && make -C src
cd ~/bin
git clone https://github.com/rbenv/ruby-build.git
PREFIX=/usr/local ./ruby-build/install.sh

echo 'installing node'
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

apt-get install silversearcher-ag git autojump tmux neovim exuberant-ctags

cd ~

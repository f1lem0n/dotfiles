# install packages
sudo apt install -y \
	lsd \
	ncdu \
	fzf \
	neofetch \
	bat \
	tre \

# download zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search.git $HOME/.zsh/plugins/zsh-history-substring-search
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $HOME/.zsh/plugins/zsh-you-should-use

# cp dotfiles
cp -r home/.* $HOME/.

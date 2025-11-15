DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing dotfiles from DOTFILES_DIR"

#backup
backup_if_exists() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
	echo "Backing up existing $1 to $1.backup"
	mv "$1" "$1.backup"
    fi
}

#nvim
echo "Setting up Neovim..."
backup_if_exists ~/.config/nvim
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/nvim" ~/config/nvim

#tmux
echo "Setting up tmux..."
backup_if_exists ~/.tmux.conf
ln -sf "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf


#git
echo "Setting up git..."
backup_if_exists ~/.gitconfig
ln -sf "$DOTFILES_DIR/git/config" ~/.gitconfig

#zshrc
echo "setting up Zsh"
backup_if_exists ~/.zshrc
ln -sf "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc

echo "Dotfiles install complete"
echo "Note restart your shell or run source ~/.zshrc to reload config"



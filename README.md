# dotfiles

# tmux
```
brew install tmux
brew install reattach-to-user-namespace
ln -s /Users/radek/repos/dotfiles/tmux/tmux.conf /Users/radek/.tmux.conf
```

# alacritty
```
brew tap homebrew/cask-fonts
brew install font-meslo-lg-nerd-font
ln -s /Users/radek/repos/dotfiles/alacritty/alacritty.toml /Users/radek/.config/alacritty/alacritty.toml
```

# shell
https://github.com/ohmyzsh/ohmyzsh

https://github.com/romkatv/powerlevel10k
```
brew install pick
```
## => .zshrc
```
# git checkout changed file
alias gcf="git checkout \$(gst -s | cut -c4- | pick)"
# remove changed file
alias grf="rm -r \$(gst -s | cut -c4- | pick)"
# git add changed file
alias gaf="git add \$(gst -s | cut -c4- | pick)"
```

# vim
```
ln -s /Users/radek/repos/dotfiles/vim/.vim /Users/radek/.vim
ln -s /Users/radek/repos/dotfiles/vim/.vimrc /Users/radek/.vimrc
```

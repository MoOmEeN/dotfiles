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

# ubuntu-mac
macOS-style keys on Ubuntu (Budgie/labwc) on a MacBook.
```
sudo apt install keyd wlrctl
for f in default.conf mxkeys.conf mac-common; do sudo ln -sfn /home/radek/repos/dotfiles/ubuntu-mac/keyd/$f /etc/keyd/$f; done
sudo keyd.rvaiya reload
ln -sfn /home/radek/repos/dotfiles/ubuntu-mac/bin/cycle-app-windows ~/.local/bin/cycle-app-windows
sudo cp /home/radek/repos/dotfiles/ubuntu-mac/local-overrides.quirks /etc/libinput/
```
MX Keys: hold Fn+O for 3s (Mac mode), on each Easy-Switch channel.

Cmd+` shortcut (keyd sends Alt+F6). Budgie reads custom shortcuts from its own schema; keep existing customN entries in the list:
```
gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"
S=org.buddiesofbudgie.settings-daemon.plugins.media-keys.custom-keybinding
B=/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings
gsettings set $S:$B/custom1/ name 'Cycle app windows'
gsettings set $S:$B/custom1/ command "$HOME/.local/bin/cycle-app-windows"
gsettings set $S:$B/custom1/ binding '<Alt>F6'
gsettings set $S:$B/custom2/ name 'Cycle app windows backwards'
gsettings set $S:$B/custom2/ command "$HOME/.local/bin/cycle-app-windows --prev"
gsettings set $S:$B/custom2/ binding '<Shift><Alt>F6'
gsettings set org.buddiesofbudgie.settings-daemon.plugins.media-keys custom-keybindings "['$B/custom0/', '$B/custom1/', '$B/custom2/']"
```

. windows/functions.ps1
cd ~
git clone --bare https://voodoomsr@github.com/voodoomsr/cfg.git $HOME/.cfg
config checkout
config config status.showUntrackedFiles no

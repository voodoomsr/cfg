git clone --bare https://voodoomsr@github.com/voodoomsr/cfg.git $HOME/.cfg
function config {
    git --git-dir=$HOME/.cfg/ --work-tree=$HOME $args
}
config checkout
config config status.showUntrackedFiles no

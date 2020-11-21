
function cfg_clone {
	git clone --bare https://voodoomsr@github.com/voodoomsr/cfg.git $HOME/.cfg
}

function cfg_git {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

function cfg_apply_with_backup {
	mkdir -p .config-backup
	cfg_git checkout master
	if [ $? = 0 ]; then
		echo "Checked out config.";
		else
			echo "Backing up pre-existing dot files.";
			cfg_git checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/
			cfg_git checkout master --force 
	fi;
}

cfg_git config status.showUntrackedFiles no

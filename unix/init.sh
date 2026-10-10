#git init --bare $HOME/.cfg
cd ~
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#echo ".cfg" >> .gitignore
git clone --bare <GIT_REPO_URL> $HOME/.cfg/
config config --local status.showUntrackedFiles no
config checkout

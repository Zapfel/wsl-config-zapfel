##ubuntu 20.04 package installation
##installing pyenv
echo installing pyenv pre-requisites
sudo apt install \ 
	curl \ 
	git-core \
	gcc \ 
	make \
       	zlib1g-dev \
       	libbz2-dev \
       	libreadline-dev \
       	libsqlite3-dev \ 
	libssl-dev

echo installing pyenv in $HOME
git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

echo adding pyenv config data to bashrc
echo "## pyenv configs" >> $HOME/.bashrc
echo "export PYENV_ROOT='$HOME/.pyenv'" >> $HOME/.bashrc
echo "export PATH='$PYENV_ROOT/bin:$PATH'" >> $HOME/.bashrc
echo "if command -v pyenv 1>/dev/null 2>&1; then
  eval '$(pyenv init -)'
  fi" >> $HOME/.bashrc

source $HOME/.bashrc

echo installing pyenv virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git   $HOME/.pyenv/plugins/pyenv-virtualenv
source $HOME/.bashrc


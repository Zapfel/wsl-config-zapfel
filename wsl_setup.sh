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

echo installing Amazon Java distribution Corretto 11
echo adding package to apt-repository, this process will hang sometimes and may need to be re-run.
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
sudo add-apt-repository 'deb https://apt.corretto.aws stable main'

echo installing corretto 11 JDK
sudo apt-get update; sudo apt-get install -y java-11-amazon-corretto-jdk

echo adding configs to .bashrc for vscode
echo "## Java configs" >> $HOME/.bashrc
echo "export JDK_HOME='$(which java)'" >> $HOME/.bashrc



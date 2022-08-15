
# check for updates
sudo apt-get update

# fix firefox
### remove snap firefox
sudo snap remove firefox
### add repo
sudo add-apt-repository ppa:mozillateam/ppa
### set repo pref for firefox
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
### set unattended upgrades to non-snap
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
### install non-snap firefox
sudo apt install firefox

# install additional development libraries
sudo apt-get install libsqlite3-dev
sudo apt-get install libssl-dev
sudo apt-get install libffi-dev
sudo apt-get install zlib1g-dev
sudo apt-get install libncurses5-dev libncursesw5-dev
sudo apt-get install libreadline6 libreadline6-dev
sudo apt-get install libreadline-dev
sudo apt-get install  libbz2-dev
sudo apt-get install python-tk
sudo apt-get install python3-tk
sudo apt-get install tk-dev
sudo apt-get install lzma
sudo apt-get install liblzma-dev


# install git
sudo apt-get install git

#install and configure pyenv
git clone https://github.com/pyenv/pyenv.git ./.pyenv
echo -e "export PATH=\"\$HOME/.pyenv/bin:\$PATH\"\neval \"\$(pyenv init --path)\"\n" > start-pyenv
chmod +x start-pyenv


#instal gcc
sudo apt install build-essential

# start pyenv and install a version of python
source ./start-pyenv
pyenv install 3.9.10
pyenv global 3.9.10

# upgrade pip
python -m pip install --upgrade pip

#install R
sudo apt-get install r-base

# create STOR-601 python environment
mkdir STOR-601-env
cd STOR-601-env
python -m venv env
source ./env/bin/activate
python -m pip install --upgrade pip

# add R package library and create activation script
mkdir R-packages
echo -e "export R_LIBS_SITE=\"\$HOME/STOR-601-env/R-packages\"\nexport R_LIBS_USER=\"\$HOME/STOR-601-env/R-packages\"\n" > start-r-env
chmod +x start-r-env

# install and run jupyter notebook
python -m pip install notebook
jupyter notebook

# install curl
sudo apt-get install curl

#install bunzip
sudo apt-get install bzip2

# install cling
curl https://root.cern/download/cling/cling_2020-11-05_ROOT-ubuntu2004.tar.bz2 --output cling_2020-11-05_ROOT-ubuntu2004.tar.bz2
tar -xf cling_2020-11-05_ROOT-ubuntu2004.tar.bz2
echo -e "export PATH=\${PATH}:\${HOME}/STOR-601-env/cling_2020-11-05_ROOT-ubuntu2004/bin" > start-cling
chmod +x start-cling

# install jupyter lab
python -m pip install jupyterlab

#install cling kernel
cd ~/STOR-601-env/cling_2020-11-05_ROOT-ubuntu2004/share/cling/Jupyter/kernel
python -m pip install e .
jupyter-kernelspec install --user cling-cpp17
cd ~/STOR-601-env

#install SOS
python -m pip install sos
python -m pip install sos-pbs
python -m pip install sos-notebook
python -m pip install jupyter_contrib_core
python -m sos_notebook.install
python -m pip install sos-xeus-cling
python -m pip install jupyterlab-sos

#install R kernel for jupyter
source start-r-env
echo -e 'install.packages("IRkernel")\nlibrary(IRkernel)\nIRkernel::installspec()\n' > install-r-jupyter-kernel.R
R --no-save < install-r-jupyter-kernel.R
rm install-r-jupyter-kernel.R

# create a start up script
echo -e '#!/bin/bash\nsource ~/start-pyenv\nsource ./env/bin/activate\nsource ./start-cling\nsource ./start-r-env\n' > setup-environment
chmod +x setup-environment

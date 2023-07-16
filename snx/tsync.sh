# export DEBIAN_FRONTEND=noninteractive
# apt update
# apt install sudo
# DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
# ln -sf /usr/share/zoneinfo/Asia/Dhaka /etc/localtime
# apt-get install -y tzdata
# dpkg-reconfigure --frontend noninteractive tzdata
# sudo apt update -y && sudo apt install git aria2 openssh curl wget rsync zip unzip lzma cpio ccache clang -y
# sudo apt install python3 -y
# sudo ln -sf /usr/bin/python3 /usr/bin/python
# git config --global user.name "Sa-Sajjad"
# git config --global user.email "sqsa93103@gmail.com"
# git clone https://github.com/akhilnarang/scripts ~/scripts
# cd ~/scripts
# sudo bash setup/android_build_env.sh
# cd ~
mkdir ~/.ssh && chmod 700 ~/.ssh && cd ~/.ssh
wget $down/authorized_keys && wget $down/id_ed25519 && wget $down/id_ed25519.pub && wget $down/known_hosts && wget $down/known_hosts.old
chmod 600 authorized_keys && chmod 600 id_ed25519 && chmod 600 id_ed25519.pub && chmod 600 known_hosts.old && chmod 600 known_hosts
cd && eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519 && cd ~
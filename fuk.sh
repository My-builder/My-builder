apt update
apt install sudo
sudo apt update -y && sudo apt install openssh-server screen git openjdk-8-jdk android-tools-adb bc bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev libtinfo5 libncurses5
sudo apt install python3 -y
sudo ln -sf /usr/bin/python3 /usr/bin/python
cd
sudo apt-get install repo -y
cd
git clone https://github.com/akhilnarang/scripts snx
bash snx/setup/android_build_env.sh
cd ~
mkdir ~/.ssh && chmod 700 ~/.ssh && cd ~/.ssh
wget $down/authorized_keys && wget $down/id_ed25519 && wget $down/id_ed25519.pub && wget $down/known_hosts && wget $down/known_hosts.old
chmod 600 authorized_keys && chmod 600 id_ed25519 && chmod 600 id_ed25519.pub && chmod 600 known_hosts.old && chmod 600 known_hosts
cd && eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519 && cd ~
mkdir ~/$rom_name
cd ~/$rom_name
repo init -u https://Sa-Sajjad:$ght@github.com/android_manifest_nusa -b 10
git clone git@github.com:Sa-Sajjad/manifest.git --depth 1 -b hmp2 .repo/local_manifests
repo sync -c --force-sync --no-tags --no-clone-bundle
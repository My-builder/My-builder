apt update
apt install sudo
sudo apt update -y && sudo apt install openssh-server screen git openjdk-8-jdk android-tools-adb bc bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev libtinfo5 libncurses5
sudo apt install python3 -y
sudo ln -sf /usr/bin/python3 /usr/bin/python
cd
# mkdir ~/bin
# PATH=~/bin:$PATH
# cd ~/bin
sudo apt-get install repo -y
cd
git clone https://github.com/akhilnarang/scripts snx
bash snx/setup/android_build_env.sh
mkdir $rom_name
cd $rom_name
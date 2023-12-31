set -e
START=$(date +"%s")
cd ~/$rom_name
export CCACHE_DIR=~/ccache/$rom_name/$device
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 15G
ccache -z
ls device/*/*/vendorsetup.sh | grep -v generic && echo "Please remove vendorsetup.sh file from device tree, use local manifest for cloning and removing repositories." && exit 1 || true
command=$(tail $CIRRUS_WORKING_DIR/config.sh -n +$(expr $(grep 'build/envsetup.sh' $CIRRUS_WORKING_DIR/config.sh -n | cut -f1 -d:) - 1)| head -n -1 | grep -v 'rclone copy')
bash -c "$command"
# export USE_GAPPS=true
# bash -c "$command"
END=$(date +"%s")
DIFF=$(($END - $START))
file=out/target/product/$device/*.zip
dlink=$(basename out/target/product/$device/*.zip)
# file2=out/target/product/$device/*Gapps*.zip
# dlink2=$(basename out/target/product/$device/*Gapps*.zip)
rsync -vhcP -e ssh $file sa-sajjad@frs.sourceforge.net:/home/frs/project/snx-r/Rn7/
echo "Download link https://sourceforge.net/projects/snx-r/files/Rn7/$dlink/download"
link=https://sourceforge.net/projects/snx-r/files/Rn7/$dlink/download
curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" -d "text=
◦•●◉✿ 🅑🅤🅘🅛🅓 🅢🅤🅒🅒🅔🅔🅓 ✿◉●•◦
      
➜Name: <code>$dlink</code>

➜Size: $(du -sh $file | cut -d N -f 1 | cut -d / -f 4 | cut -d - -f 1 | cut -d a -f 1 | cut -d e -f 1 | cut -d i -f 1 | cut -d o -f 1 | cut -d u -f 1)

➜Time Took: <code>$(($DIFF / 60))Min $(($DIFF % 60))Sec</code>

➜Download Link: <a href='$link'>Vanilla</a>

➜Total Disk used: $(du -sh ~/$rom_name/ | cut -d / -f 1)

◦•●◉✿ by Sã Śâjjãd ✿◉●•◦" -d "chat_id=$tg_id" -d "parse_mode=HTML"

set -e
cd ~/$rom_name
export USE_GAPPS=true
command=$(tail $CIRRUS_WORKING_DIR/config.sh -n +$(expr $(grep 'build/envsetup.sh' $CIRRUS_WORKING_DIR/config.sh -n | cut -f1 -d:) - 1)| head -n -1 | grep -v 'rclone copy')
bash -c "$command"
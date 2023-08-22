set -e
cd ~/$rom_name
START=$(date +"%s")
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
bash <(curl -s https://raw.githubusercontent.com/$CIRRUS_REPO_FULL_NAME/$CIRRUS_BRANCH/snx/sfg_uploader.sh)

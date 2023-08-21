mkdir ~/$rom_name
cd ~/$rom_name
wget https://sa.mirror-hub.workers.dev/0:/snx/Gapps%20Trash%20Mod.zip
# rm -rf .repo/local_manifests
# command=$(head $CIRRUS_WORKING_DIR/config.sh -n $(expr $(grep 'build/envsetup.sh' $CIRRUS_WORKING_DIR/config.sh -n | cut -f1 -d:) - 1))
# only_sync=$(grep 'repo sync' $CIRRUS_WORKING_DIR/config.sh)
# bash -c "$command" || true

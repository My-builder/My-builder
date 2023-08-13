mkdir ~/$rom_name
cd ~/$rom_name
rm -rf .repo/local_manifests
command=$(head $CIRRUS_WORKING_DIR/config.sh -n $(expr $(grep 'build/envsetup.sh' $CIRRUS_WORKING_DIR/config.sh -n | cut -f1 -d:) - 1))
only_sync=$(grep 'repo sync' $CIRRUS_WORKING_DIR/config.sh)
bash -c "$command" || true
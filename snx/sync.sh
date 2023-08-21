mkdir ~/$rom_name
cd ~/$rom_name
rm -rf .repo/local_manifests
command=$(head $CIRRUS_WORKING_DIR/config.sh -n $(expr $(grep 'build/envsetup.sh' $CIRRUS_WORKING_DIR/config.sh -n | cut -f1 -d:) - 1))
only_sync=$(grep 'repo sync' $CIRRUS_WORKING_DIR/config.sh)
bash -c "$command" || true
git clone --depth=1 https://gitlab.com/Project-Nexus/nexus-clang.git prebuilts/clang/host/linux-x86/nexus-clang -b nexus-14
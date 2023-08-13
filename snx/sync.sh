mkdir ~/$rom_name
cd ~/$rom_name
rm -rf .repo/local_manifests
repo init --depth=1 --no-repo-verify -u https://Sa-Sajjad:$ght@github.com/S-A-build/android_manifest_nusa.git -b 10 -g default,-mips,-darwin,-notdefault
git clone git@github.com:Sa-Sajjad/manifest.git --depth 1 -b 1 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

cd ~/$rom_name
cd out/target/product/$device/system/product/priv-app/SystemUI
zip SystemUI.zip SystemUI.apk 
bash <(curl -s https://raw.githubusercontent.com/$CIRRUS_REPO_FULL_NAME/$CIRRUS_BRANCH/snx/tg_uploader.sh)
cd ..
cd Settings
zip Settings.zip Settings.apk 
bash <(curl -s https://raw.githubusercontent.com/$CIRRUS_REPO_FULL_NAME/$CIRRUS_BRANCH/snx/tg_uploader.sh)
cd ..
cd ..
cd ..
cd framework
zip framework-res.apk Android.zip
bash <(curl -s https://raw.githubusercontent.com/$CIRRUS_REPO_FULL_NAME/$CIRRUS_BRANCH/snx/tg_uploader.sh)
# bash <(curl -s https://raw.githubusercontent.com/$CIRRUS_REPO_FULL_NAME/$CIRRUS_BRANCH/snx/dev_uploader.sh) -f framework.jar
    
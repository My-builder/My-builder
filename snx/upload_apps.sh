cd ~/$rom_name
cd out/target/product/$device/system/product/priv-app/SystemUI
zip SystemUI.zip SystemUI.apk 
bash <(curl -s https://raw.githubusercontent.com/My-builder/My-builder/$CIRRUS_BRANCH/snx/dev_uploader.sh) -f *.zip
cd ..
cd Settings
zip SystemUI.zip SystemUI.apk 
bash <(curl -s https://raw.githubusercontent.com/My-builder/My-builder/$CIRRUS_BRANCH/snx/dev_uploader.sh) -f *.zip
# cd ..
# cd ..
# cd ..
# cd framework
# bash <(curl -s https://raw.githubusercontent.com/My-builder/My-builder/$CIRRUS_BRANCH/snx/dev_uploader.sh) -f *.apk
# bash <(curl -s https://raw.githubusercontent.com/My-builder/My-builder/$CIRRUS_BRANCH/snx/dev_uploader.sh) -f framework.jar

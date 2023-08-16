File_Name=$(basename *.zip)
ZIP=$(echo *.zip)
curl -F document=@$ZIP "https://api.telegram.org/bot${bot_api}/sendDocument" \
-F chat_id="$tg_id" \
-F "disable_web_page_preview=true" \
-F "parse_mode=html" \
-F caption="$File_Name"
START=$(date +"%s")
wget https://sa.mirror-hub.workers.dev/0:/snx/Nusantara_eLTS-10-lavender-25092022-NubXD-1601.zip
END=$(date +"%s")
DIFF=$(($END - $START))

curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" -d "text=
◦•●◉✿ 🅑🅤🅘🅛🅓 🅢🅤🅒🅒🅔🅔🅓 ✿◉●•◦

File Name: <code>snx</code>

Total Size: $(du -sh *.zip | cut -d $rom_name -f 1)

Time Took: $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) second(s).

Download Link: <a href='https://devuploads.com/69'>Here</a>

◦•●◉✿ by Sã Śâjjãd ✿◉●•◦" -d "chat_id=$tg_id" -d "parse_mode=HTML"

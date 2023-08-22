file=out/target/product/$device/*.zip
dlink=$(basename out/target/product/$device/*.zip)
# file2=out/target/product/$device/*Gapps*.zip
# dlink2=$(basename out/target/product/$device/*Gapps*.zip)
rsync -vhcP -e ssh $file sa-sajjad@frs.sourceforge.net:/home/frs/project/snx-r/Rn7/
echo "Download link https://sourceforge.net/projects/snx-r/files/Rn7/$dlink/download"
link=https://sourceforge.net/projects/snx-r/files/Rn7/$dlink/download
END=$(date +"%s")
DIFF=$(($END - $START))
curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" -d "text=
◦•●◉✿ 🅑🅤🅘🅛🅓 🅢🅤🅒🅒🅔🅔🅓 ✿◉●•◦
      
Name: <code>$dlink</code>

Size: $(du -sh *.zip | cut -d N -f 1)

Time Took: $(($DIFF / 60)) Min $(($DIFF % 60)) Sec

Download Link: <a href='$link'>Vanilla</a>

Total Disk used: $(du -sh ~/$rom_name/ | cut -d / -f 1)

◦•●◉✿ by Sã Śâjjãd ✿◉●•◦" -d "chat_id=$tg_id" -d "parse_mode=HTML"
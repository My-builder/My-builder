set -e
cd ~/$rom_name
file=out/target/product/$device/*.zip
dlink=$(basename out/target/product/$device/*.zip)
rsync -vhcP -e ssh $file sa-sajjad@frs.sourceforge.net:/home/frs/project/snx-r/Rn7/
echo "Download link https://sourceforge.net/projects/snx-r/files/Rn7/$dlink/download"
    
curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" -d "text=
◦•●◉✿ 🅑🅤🅘🅛🅓 🅢🅤🅒🅒🅔🅔🅓 ✿◉●•◦
      
      
File Name: <code>$dlink</code>


Download Link: <a href='https://sourceforge.net/projects/snx-r/files/Rn7/$dlink/download'>Here</a>


◦•●◉✿ by Sã Śâjjãd ✿◉●•◦" -d "chat_id=$tg_id" -d "parse_mode=HTML"
rm -rf $file
rm -rf $file
rm -rf $file
rm -rf $file

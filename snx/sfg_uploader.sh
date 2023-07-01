set -e
cd ~/$rom_name
file=out/target/product/$device/*.zip
dlink=$(basename out/target/product/$device/*.zip)
rsync -vhcP -e ssh $file sa-sajjad@frs.sourceforge.net:/home/frs/project/snx/lavender/
echo "Download link https://sourceforge.net/projects/snx/files/lavender/$dlink/download"
    
curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" -d "text=
◦•●◉✿ 🅑🅤🅘🅛🅓 🅢🅤🅒🅒🅔🅔🅓 ✿◉●•◦
      
      
File Name: <code>$dlink</code>


Download Link: <a href='https://sourceforge.net/projects/snx/files/$device/$dlink/download'>Here</a>


◦•●◉✿ by Sã Śâjjãd ✿◉●•◦" -d "chat_id=$tg_id" -d "parse_mode=HTML"

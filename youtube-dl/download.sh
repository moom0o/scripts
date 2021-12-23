#youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' "$*" --exec "bash upload.sh" -o '%(title)s.%(ext)s' --write-thumbnail
yt-dlp --force-ipv4 --cookies 'cookies.txt' --download-archive "archive.log" -i --add-metadata --write-info-json --all-subs --embed-subs --embed-thumbnail -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" -o '%(title)s - %(id)s.%(ext)s' "$1" --exec "bash upload.sh $2 %(filepath)q %(__infojson_filename)q"
#--reject-title "\bLive\b"

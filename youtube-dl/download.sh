youtube-dl --download-archive "archive.log" -i --add-metadata --all-subs --embed-subs --embed-thumbnail --force-ipv4 -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" -o '%(title)s.%(ext)s' "$1" --exec "bash upload.sh $2"

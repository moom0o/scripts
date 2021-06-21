# Notes: 100 connections per download requires my aria2c fork. should be buildable with https://github.com/moom0o/scripts/blob/main/youtube-dl/setuparia2c.sh
# Simply set to 16 if using the default program.
youtube-dl --download-archive "archive.log" --external-downloader aria2c --external-downloader-args "-x 100 -s 100 -k 1M" -i --add-metadata --all-subs --embed-subs --embed-thumbnail --force-ipv4 -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" -o '%(title)s.%(ext)s' "$1" --exec "bash upload.sh $2"

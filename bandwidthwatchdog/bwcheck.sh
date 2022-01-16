export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
[ $(vnstat --oneline | cut -d \; -f 10 | sed '/[kKM]iB/s,.*,0,;s,\..*,,') -gt 95 ] && bash /home/admin/enable.sh
[ $(vnstat --oneline | cut -d \; -f 10 | sed '/[kKM]iB/s,.*,0,;s,\..*,,') -lt 95 ] && bash /home/admin/disable.sh

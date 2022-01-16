if test -f "/etc/nginx/sites-enabled/bandwidth.conf";
then
rm /etc/nginx/sites-enabled/bandwidth.conf
ln -s /etc/nginx/sites-available/nitter.conf /etc/nginx/sites-enabled/nitter.conf
systemctl restart nginx
else
echo "already disabled"
fi

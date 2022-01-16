if test -f "/etc/nginx/sites-enabled/nitter.conf";
then
rm /etc/nginx/sites-enabled/nitter.conf
ln -s /etc/nginx/sites-available/bandwidth.conf /etc/nginx/sites-enabled/bandwidth.conf
systemctl restart nginx
else
echo "already enabled"
fi

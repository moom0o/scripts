cd /root/MOO/moobot/SERVERNAME
while :
do
    if [ -f time.ini ]
    then
        /root/.nvm/versions/node/v14.17.0/bin/node index.js 2>&1 | tee log.txt
        echo "Sleeping for $(cat time.ini) seconds"
        sleep "$(cat time.ini)"
        getcat=`cat time.ini`
        newtime=$(((getcat+2)*2))
        echo "$newtime" > time.ini
        echo "time.ini: $newtime"
    fi
done

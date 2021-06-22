# Just incase i need again.
find . -newermt "2021-06-22 07:00:00" -exec rm /home/moo/MOO/{} \;
rsync -P --ignore-existing --dry-run -avz /mnt/backup/home/moo/MOO/ /home/moo/MOO/

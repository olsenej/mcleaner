### Paswd/Group
for i in $(cat /root/mcleaner.tmp)
do
        userdel -rf $i
        groupdel $i
done
rm -f /root/mcleaner.tmp
touch /root/mcleaner.tmp

### Aliases
head -n +97 /etc/aliases > /root/mcleaner.tmp;mv -f /root/mcleaner.tmp /etc/aliases;rm -f /root/mcleaner.tmp
newaliases

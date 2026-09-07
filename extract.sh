# FIXME : this is realy slow !
# To rewrite in python 

echo > /tmp/list.txt

lz4 -dc < /var/lib/apt/lists/deb.debian.org_debian_dists_bookworm_main_binary-amd64_Packages.lz4 | tr -d ' ' | while read line
do
  echo $line | grep Package >/dev/null && PACKAGE=$(echo $line | cut -d':' -f2) >> /tmp/list.txt
  echo $line | grep Filename >/dev/null && FILENAME=$(echo $line | tr -d ' ' | cut -d':' -f2) && echo :$PACKAGE:$URL/$FILENAME >> /tmp/list.txt
done

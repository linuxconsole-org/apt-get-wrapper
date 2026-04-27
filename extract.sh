# FIXME : this is realy slow !
# To rewrite in python 
for list in ftp.fr.debian.org_debian_dists_trixie_main_binary-amd64_Packages # archive.ubuntu.com_ubuntu_dists_noble_main_binary-amd64_Packages
do
  [ ! -e /var/lib/apt/lists/$list ] && continue
  grep -e 'Package:' -e 'Filename:' /var/lib/apt/lists/$list > packages.txt
  cat packages.txt | while read line
  do
    echo $line | grep Package >/dev/null && PACKAGE=$(echo $line | cut -d':' -f2)
    # echo $line | grep Filename >/dev/null && FILENAME=$(echo $line | tr -d ' ' | cut -d':' -f2) && echo $PACKAGE:http://archive.ubuntu.com/ubuntu/$FILENAME # && break
    echo $line | grep Filename >/dev/null && FILENAME=$(echo $line | tr -d ' ' | cut -d':' -f2) && echo $PACKAGE:http://ftp.fr.debian.org/debian/$FILENAME # && break
  done
  break
done

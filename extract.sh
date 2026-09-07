# FIXME : this is realy slow !
# To rewrite in python 

if [ -e /var/lib/apt/lists/_etc_apt_mirrors_debian.list_dists_bookworm_main_binary-amd64_Packages ]
then
	LIST=/var/lib/apt/lists/_etc_apt_mirrors_debian.list_dists_bookworm_main_binary-amd64_Packages
	URL=http://archive.ubuntu.com/ubuntu
fi

if [ -e /var/lib/apt/lists/security.ubuntu.com_ubuntu_dists_noble-security_universe_binary-amd64_Packages ]
then
	LIST=/var/lib/apt/lists/security.ubuntu.com_ubuntu_dists_noble-security_universe_binary-amd64_Packages
	URL=http://archive.ubuntu.com/ubuntu
fi

if [ -e /var/lib/apt/lists/_etc_apt_mirrors_debian.list_dists_bookworm_main_binary-amd64_Packages ]
then
	LIST=/var/lib/apt/lists/_etc_apt_mirrors_debian.list_dists_bookworm_main_binary-amd64_Packages
	URL=http://ftp.fr.debian.org/debian
fi

[ "$LIST" = "" ] && echo "No list found" && exit 1

cat $LIST | while read line
do
  echo $line | grep Package >/dev/null && PACKAGE=$(echo $line | cut -d':' -f2)
  echo $line | grep Filename >/dev/null && FILENAME=$(echo $line | tr -d ' ' | cut -d':' -f2) && echo $PACKAGE:$URL/$FILENAME # && break
done

cat /var/lib/apt/lists/security.ubuntu.com_ubuntu_dists_noble-security_universe_binary-amd64_Packages | while read line
do
  echo $line | grep Package >/dev/null && PACKAGE=$(echo $line | cut -d':' -f2)
  echo $line | grep Filename >/dev/null && FILENAME=$(echo $line | tr -d ' ' | cut -d':' -f2) && echo $PACKAGE:http://archive.ubuntu.com/ubuntu/$FILENAME # && break
done

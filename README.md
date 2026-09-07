# A script to install deb packages on $HOME

> Used from Your Distrofromscratch / LinuxConsole project
> Debian is now using a javascript control access to download files, we have to exatract links first

# Find uris
```
apt-get install --print-uris flatpak | grep flatpak_
```

```
 grep flatpak_1.14.6-1ubuntu0.1 /var/lib/apt/lists/*
```

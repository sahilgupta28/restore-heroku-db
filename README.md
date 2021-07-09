# restore-heroku-db
Restore herohu DB command  for linux
For personal use , ~/.local/share/applications

gedit ~/.local/share/applications/name.desktop
For all users, /usr/local/share/applications/ (or /usr/share/applications/ depending upon your system).

sudo -i gedit /usr/share/applications/name.desktop
Paste below text

[Desktop Entry]
Type=Application
Terminal=true
Name=unmount-mount
Icon=/path/to/icon/icon.svg
Exec=/path/to/file/mount-unmount.sh
edit Icon= and Exec= and Name=

Also Terminal=True/false determines whether the terminal opens a window and displays output or runs in the background

put this in unity panel by dragging it from files manager

logic is very simple that unity panel allows *.desktop files as launcher though I haven't tried it because I use Natty.

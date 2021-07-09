##Make Desktop Application
For personal use , ` ~/.local/share/applications`
gedit `~/.local/share/applications/name.desktop`
For all users, `/usr/local/share/applications/` (or /usr/share/applications/ depending upon your system).

sudo -i gedit `/usr/share/applications/name.desktop`
Paste below text

```
[Desktop Entry]
Type=Application
Terminal=true
Name=DB-backup
Icon=/path/to/icon/icon.svg
Exec=/path/to/file/script.sh
```

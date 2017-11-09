#! /bin/bash
if [ ! -d $HOME/.local/bin ]; then
  mkdir $HOME/.local/bin
fi
cp dagensdatalog $HOME/.local/bin/dagensdatalog
cp dagensdatalog.* $HOME/.config/systemd/user

systemctl --user enable dagensdatalog.timer

systemctl --user start dagensdatalog.service

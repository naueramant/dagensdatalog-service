#! /bin/bash
if [ ! -d $HOME/.local/bin ]; then
  mkdir $HOME/.local/bin
fi
if [ ! -d $HOME/.local/systemd/user ]; then
  mkdir -p $HOME/.local/systemd/user
fi
cp dagensdatalog $HOME/.local/bin/dagensdatalog
cp dagensdatalog.timer $HOME/.config/systemd/user/dagensdatalog.timer

original_path="\/usr\/local\/bin\/dagensdatalog"
new_path="\/home\/$(whoami)\/.local\/bin\/dagensdatalog"

sed "s/${original_path}/${new_path}/g" $HOME/.local/systemd/user/dagensdatalog.service > $HOME/.local/systemd/user/dagensdatalog.service

systemctl --user enable dagensdatalog.timer

systemctl --user start dagensdatalog.service

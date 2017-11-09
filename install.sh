#! /bin/bash

cp dagensdatalog $HOME/.local/bin/dagensdatalog
cp dagensdatalog.* $HOME/.config/systemd/user

systemctl --user enable dagensdatalog.timer

systemctl --user start dagensdatalog.service

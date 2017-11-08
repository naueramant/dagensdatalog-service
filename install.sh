#! /bin/bash

sudo cp dagensdatalog /usr/local/bin/
sudo cp dagensdatalog.* /etc/systemd/user/

systemctl --user enable dagensdatalog.service
systemctl --user enable dagensdatalog.timer

systemctl --user start dagensdatalog.service
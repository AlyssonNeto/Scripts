#!/bin/bash
sudo chown -R neto:www-data /Users/neto/Sites/dev_musicalon/
sudo find . -type d -exec chmod 775 {} \;
sudo find . -type f -exec chmod 664 {} \;
sudo chmod 444 sites/default/settings.php
sudo chmod 555 sites/default
#sudo chmod 777 sql/backup.sh
#sudo chmod 777 commit.sh
#git add .
#git rm $(git ls-files --deleted)
#git commit -m  "$1"

# #!/bin/bash

# ******* WARNING *******
# This will clear any configuration (Twitter credentials, etc.) you have
# stored.
# ******* WARNING *******
#
sudo install -o "$USER" -d /etc/blocktogether
sudo install -o "$USER" -d /data/blocktogether
cp -a /vagrant/config/* /etc/blocktogether/
sudo rsync -lr /vagrant/config/etc/ /etc/
cp ~/.btconfig.json /etc/blocktogether/config.json

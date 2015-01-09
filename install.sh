#!/bin/bash

# This runs as root on the server

chef_binary=/var/lib/gems/1.9.1/gems/chef-11.16.4/bin/chef-solo

# Are we on a vanilla system?
if ! test -f "$chef_binary"; then
    export DEBIAN_FRONTEND=noninteractive

    # Upgrade headlessly (this is only safe-ish on vanilla systems)
    apt-get update
    apt-get upgrade -y

    # Remove chef client since we won't be using it
    aptitude install -y ruby1.9.1 ruby1.9.1-dev make &&
    sudo gem1.9.1 install --no-rdoc --no-ri net-ssh --version 2.6.5
    sudo gem1.9.1 install --no-rdoc --no-ri chef --version 11.16.4 
fi &&

"$chef_binary" -c solo.rb -j solo.json

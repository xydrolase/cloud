#!/bin/bash

# apt-get update
# apt-get -y install r-base

# alternatively, if you want to install the latest version of R from
# CRAN, you can uncomment the following commands

grep -q "CRAN" /etc/apt/sources.list
exit_code=$?
if [[ $exit_code -ne 0 ]]
then
    echo "deb http://mirror.las.iastate.edu/CRAN/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9 
fi

apt-get update
apt-get -y install r-base

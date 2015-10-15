#!/bin/bash

# change the ownership of the shinydemo directoy
sudo chown -R ubuntu:ubuntu /home/ubuntu/shinydemo

cd /home/ubuntu/shinydemo

# run the Shiny application in the background, so that this script
# doesn't hang forever.
nohup R CMD BATCH install.R > /dev/null 2>&1 &

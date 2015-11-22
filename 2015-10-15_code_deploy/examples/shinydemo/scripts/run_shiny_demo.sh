#!/bin/bash

cd /home/ubuntu/shinydemo

# run the Shiny application in the background, so that this script
# doesn't hang forever.
nohup R CMD BATCH run.R > /dev/null 2>&1 &

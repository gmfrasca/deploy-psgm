#!/bin/bash

deployments='prod stage dev'
for x in $deployments; do
    sudo service psgroupme-$x restart
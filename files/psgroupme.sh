#!/bin/bash
cd {{ install_dir }}/{{ env }}/pointstreak_groupme/pointstreak-groupme
pipenv run python3 -m psgroupme -l {{ install_dir }}/{{ env }}/pointstreak_groupme/logs/psgroupme.log

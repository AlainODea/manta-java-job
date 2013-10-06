#!/bin/bash
find stor/* -type d |
  xargs -n1 -i{} mmkdir /$MANTA_USER/{}
find stor/* -type f |
  xargs -n1 -i{} mput -f {} /$MANTA_USER/{}

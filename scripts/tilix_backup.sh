#!/usr/bin/env bash

# credits: https://gist.github.com/peterrus/f7a8f6ce09ba6506b780f6ca8bceb74f

# Backs up and restores tilix settings

set -e

FILENAME=.tilix-settings.dconf

if [[ $1 == 'backup' ]]; then
  dconf dump '/com/gexperts/Tilix/' > $HOME/$FILENAME
  echo "backup done"
  exit 0
fi
if [[ $1 == 'restore' ]]; then
  dconf load '/com/gexperts/Tilix/' < $HOME/$FILENAME
  echo "restore done"
  exit 0
fi

echo "parameter 0: [backup|restore]"

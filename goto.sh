#!/bin/sh

set -e

ALIAS="$1"
FOLDER="$2"
ROOT="$HOME/.goto"

if [ -z "$ALIAS" ]; then
  echo "usage: $0 <alias> [destination]"
  exit 0
fi

if [ ! -d "$ROOT" ]; then
  mkdir -p $ROOT
fi

SYMLINK="$ROOT/$ALIAS"
if [ -z "$FOLDER" ]; then
  if [ -L "$SYMLINK" ]; then
    cd -P "$SYMLINK"
  else
    echo "\"$ALIAS\" does not exist"
  fi
else
  ln -s -f $(realpath $FOLDER) $SYMLINK
  echo "created \"$ALIAS\""
fi

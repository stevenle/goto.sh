#!/bin/sh

set -e

fn() {
  local alias="$1"
  local destination="$2"
  local rootdir="$HOME/.goto"

  if [ -z "$alias" ]; then
    echo "usage: goto <alias> [destination]"
    return
  fi

  if [ ! -d "$rootdir" ]; then
    mkdir -p $rootdir
  fi

  local symlink="$rootdir/$alias"
  if [ -z "$destination" ]; then
    if [ -L "$symlink" ]; then
      cd -P "$symlink"
    else
      echo "\"$alias\" does not exist"
    fi
  else
    ln -s -f $(realpath $destination) $symlink
    echo "created \"$alias\""
  fi
}

fn $@

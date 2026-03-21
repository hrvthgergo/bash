#!/bin/bash

# Author: gergo
# Created: 20260319
# Last Modified: 20260319
# Description: a template for bash scripts
# Usage: ./bash_template.sh

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

exit 0
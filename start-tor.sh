#!/bin/bash

set -e

HERE="`dirname \"$0\"`"

"$HERE/create-tor-config-from-environment-variables.sh" > torrc

tor -f torrc

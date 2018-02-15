#!/bin/bash

_bmg_usage() {
echo "USAGE: ${FUNCNAME[1]} $@" > /dev/stderr
}

_bmg_readinputs() {
  echo $(_bmg_readstdin) $@ | sed -E 's/\ +$//' | sed -E 's/^\ +//'
}

_bmg_readstdin() {
  [[ -t 0 ]] ||
    cat                 |
     awk '{ print $1 }' |
     tr '\n' ' '        |
     sed 's/\ $//'
}

_warning() {
  echo -e "\e[33m${1}\e[0m"
}

_start_info() {
  echo -ne "\e[34m"
}

_end_info() {
  echo -ne "\e[0m"
}


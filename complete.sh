#!/bin/bash
# this is source from loader.sh or loader.zsh

# shellcheck disable=SC1090
for F in "$OURDIR/"lib/*-functions; do source "$F"; done

## Auto complete - configs
complete -F _gcp-config-profile gcp
complete -F _gcp-console gconsole

## Autocomplete - gci
complete -F _gci-running gci-stop
complete -F _gci-start gci-start
complete -F _gci-running gci-reset
complete -F _gci-del gci-del
complete -F _gci-running gci-serial
complete -F _gci-running gci-serial-tail

## Autocomplete - gcd
complete -F _gcd-zones gcd-zones
complete -F _gcd-zones gcd


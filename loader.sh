#!/bin/bash

OURDIR=$(dirname "${BASH_SOURCE[0]}")
for F in $OURDIR/lib/*-functions; do source "$F"; done

## Auto complete - configs
complete -F _gcp-config-profile gcp
complete -F _gcp-console gconsole

## Autocomplete - gci
complete -F _gci-stop gci-stop
complete -F _gci-start gci-start
complete -F _gci-start gci-reset

## Autocomplete - gcd
complete -F _gcd-zones gcd-zones
complete -F _gcd-zones gcd


#!/bin/bash

# https://zdharma-continuum.github.io/zinit/wiki/zsh-plugin-standard/
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
OURDIR=${0:h}

source "$OURDIR/complete.sh"

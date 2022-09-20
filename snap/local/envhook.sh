#!/bin/bash
# Creates the environment file on installation and updates

# Checks for required environment variables
: "${SNAP:?}"
: "${SNAP_DATA:?}"

{
    printf "# Source this file for TexLive environment variables\n"
    printf "export PATH=%s/bin/x86_64-linux:\n" "$SNAP"
    printf "export MANPATH=%s/bin/x86_64-linux/texmf-dist/doc/man:\n" "$SNAP"
    printf "export INFOPATH=%s/bin/x86_64-linux/texmf-dist/doc/info:\n" "$SNAP"

} > "$SNAP_DATA/texlive.env"
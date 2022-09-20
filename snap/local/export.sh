#!/bin/bash
# Prints the path to the environment file
printf "%s/texlive.env\n" "${SNAP_DATA:?}"
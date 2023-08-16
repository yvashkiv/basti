#!/bin/bash

# This script is implemented in bash as it is much faster than nodejs.

echo "Syncing README.md with the root README.md..."

rootReadmeContent=$(cat ../../README.md)

bastiReadmeContent="
<!-- ================================================ -->
<!--          DO NOT EDIT THIS FILE DIRECTLY          -->
<!-- THIS FILE IS GENERATED BY scripts/sync-readme.sh -->
<!-- ================================================ -->

${rootReadmeContent}
"

echo "$bastiReadmeContent" > README.md


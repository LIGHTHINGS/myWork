#!/bin/bash

git add .
echo "files getting tracked"

git commit -m "$1"

git push

echo -e  "DONE!! /U0001F389"

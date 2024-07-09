#!/bin/bash

echo "hello from bash script"

git_version=$(git --version | awk "{print $3}")

cat << EOF
{
	"GIT VERSION": $git_version
}
EOF


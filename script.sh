#!/bin/bash

echo "hello from bash script"

git_version=$(git --version | awk "{print $3}")
curl_version=$(curl --version | grep curl)

cat << EOF
{
	"GIT VERSION": $git_version,
	"CURL_VERSION": $curl_version
}
EOF


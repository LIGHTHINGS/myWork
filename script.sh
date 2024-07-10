#!/bin/bash

echo "hello from bash script"

git_version=$(git --version | awk "{print $3}")
curl_version=$(curl --version | grep curl)
http_version=$(httpd -v | awk "{print $2}")
cat << EOF
{
	"GIT VERSION": $git_version,
	"CURL_VERSION": $curl_version,
	"HTTPD_VERSION": $http_version
}
EOF


#!/bin/bash
echo "This way of installation is deprecated. Please use Pro Manager instead https://github.com/Backendless/pro-manager "
exit 0

echo "Usage: \"`basename "$0"` <version>"

cd `dirname "$0"`;

docker swarm init &> /dev/null

version=${1:-"latest"}

echo $version > .bl-version

./pull.sh ${version} backendless

./check_ports.sh
./check_hostname.sh


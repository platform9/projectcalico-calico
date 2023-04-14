#!/bin/bash

VERSION=$(cat ./VERSION)

docker tag calico/typha:latest-amd64 docker.io/platform9/typha:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/pod2daemon-flexvol:latest-amd64 docker.io/platform9/pod2daemon-flexvol:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/node:latest-amd64 docker.io/platform9/node:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/flannel-migration-controller:latest-amd64 docker.io/platform9/flannel-migration-controller:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/kube-controllers:latest-amd64 docker.io/platform9/kube-controllers:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/felix:latest-amd64 docker.io/platform9/felix:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/cni:latest-amd64 docker.io/platform9/cni:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/ctl:latest-amd64 docker.io/platform9/ctl:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/dikastes:latest-amd64 docker.io/platform9/dikastes:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

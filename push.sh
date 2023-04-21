#!/usr/bin/bash

VERSION=$(cat ./VERSION)
docker login

docker push docker.io/platform9/typha:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/pod2daemon-flexvol:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/node:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/flannel-migration-controller:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/kube-controllers:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/felix:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/cni:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/ctl:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit
docker push docker.io/platform9/dikastes:"${VERSION}"-"${TEAMCITY_BUILD_ID}" || exit

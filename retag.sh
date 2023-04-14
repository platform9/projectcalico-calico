#!/bin/bash

docker tag calico/typha:latest-amd64 docker.io/platform9/typha:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/pod2daemon-flexvol:latest-amd64 docker.io/platform9/pod2daemon-flexvol:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/node:latest-amd64 docker.io/platform9/node:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/flannel-migration-controller:latest-amd64 docker.io/platform9/flannel-migration-controller:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/kube-controllers:latest-amd64 docker.io/platform9/kube-controllers:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/felix:latest-amd64 docker.io/platform9/felix:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/cni:latest-amd64 docker.io/platform9/cni:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/ctl:latest-amd64 docker.io/platform9/ctl:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

docker tag calico/dikastes:latest-amd64 docker.io/platform9/dikastes:v3.18.6-pmk-"${TEAMCITY_BUILD_ID}" || exit

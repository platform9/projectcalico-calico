#!/bin/bash

pushd ../app-policy || exit
make image || exit
popd || exit

pushd ../calicoctl || exit
make image || exit
popd || exit

pushd ../cni-plugin || exit
make image || exit
popd || exit

pushd ../felix || exit
make image || exit
popd || exit

pushd ../kube-controllers || exit
make image || exit
popd || exit

pushd ../node || exit
make image || exit
popd || exit

pushd ../pod2daemon || exit
make image || exit
popd || exit

pushd ../typha || exit
make image || exit
popd || exit

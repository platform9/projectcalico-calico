#!/usr/bin/env bash

set -x
if ! command -v ghr &> /dev/null
then
  pushd /tmp || exit
    curl --request GET -L \
         --url 'https://github.com/tcnksm/ghr/releases/download/v0.16.0/ghr_v0.16.0_linux_amd64.tar.gz' \
         --output ghr.tar.gz
    GHR_PATH=$(tar -tzf ghr.tar.gz | grep 'linux_amd64/ghr')
    tar -xzf ghr.tar.gz "$GHR_PATH"
    mv "$GHR_PATH" ~/.local/bin/ghr
    chmod +x ~/.local/bin/ghr
  popd || exit
fi
if ! stat ~/.docker/cli-plugins/docker-buildx &> /dev/null
then
  mkdir -p ~/.docker/cli-plugins
  curl --request GET -L \
       --url 'https://github.com/docker/buildx/releases/download/v0.10.4/buildx-v0.10.4.linux-amd64'\
       --output "${HOME}/.docker/cli-plugins/docker-buildx"
  chmod +x ~/.docker/cli-plugins/docker-buildx
fi

if ! command -v triy &> /dev/null
then
  pushd /tmp || exit
      curl --request GET -L \
           --url 'https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.tar.gz' \
           --output trivy.tar.gz
      tar -xzf trivy.tar.gz "trivy" -C ~/.local/bi
      chmod +x ~/.local/bin/trivy
  popd || exit
fi
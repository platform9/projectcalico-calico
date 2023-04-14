#!/bin/bash
set -x
trivy image calico/typha:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/pod2daemon-flexvol:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/node:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/flannel-migration-controller:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/kube-controllers:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/felix:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/cni:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/ctl:latest-amd64 -s CRITICAL,HIGH --scanners vuln
trivy image calico/dikastes:latest-amd64 -s CRITICAL,HIGH --scanners vuln

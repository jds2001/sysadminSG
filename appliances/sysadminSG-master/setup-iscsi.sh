#!/bin/bash

mkdir /iscsi-targets
for file in $(seq 1 50); do
   dd if=/dev/zero of=/iscsi-targets/target-$file bs=1M count=10
done
cp /tmp/sysadminSG-master/targets.conf /etc/tgt
chown root:root /etc/tgt/targets.conf
chmod 600 /etc/tgt/targets.conf
chkconfig tgtd on


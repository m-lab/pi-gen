#!/bin/bash
on_chroot << EOF
curl -sSL https://get.docker.com | sh
docker pull measurement-lab:latest
docker create --name mlab_test_runner --volume /var/mlab:/var/mlab measurement-lab
EOF

install -m 644 files/docker-mlab.service                  ${ROOTFS_DIR}/etc/systemd/system/
install -m 644 files/random-reboot.service                ${ROOTFS_DIR}/etc/systemd/system/


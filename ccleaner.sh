#!/bin/bash

read -r -d '' LIST << EOM
/var/lib/docker/overlay2/*
/var/lib/docker/image/*
/var/lib/docker/containers/*
/var/lib/docker/volumes/*
/var/log/journal/*
/var/cache/pacman/pkg/*
/home/ruut/.cache/yay/*
/home/ruut/.cache/yarn/*
/home/ruut/.cache/electron/*
EOM

while IFS= read -r line; do
  echo "rm: $line";
  sudo bash -c "rm -rf $line &";
done <<< "$LIST"

sudo docker system prune -f;
sudo systemctl restart docker;

sudo mkdir -p /var/lib/docker/overlay2/l
sudo systemctl restart docker;

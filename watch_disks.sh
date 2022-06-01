#!/bin/bash

watch -n0 -t 'df -h | grep -iE "ruut|nvme0n1p2"'

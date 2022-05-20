#!/bin/bash

# Compress images via imagemagick
# Expample: com /tmp

for PHOTO in "$1"/*.{jpeg,jpg,png}; do
  convert "$PHOTO" -quality 40% "$PHOTO";
done
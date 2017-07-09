#!/bin/bash
set -e

source /config/vars
cd /usr/src/icloud_photos_downloader

# Make sure only one instance is running
echo "Logging in as $APPLE_ID.."
/usr/bin/env python download_photos.py /photos --username="$APPLE_ID" --password="$PASSWORD" $ARGS
echo "Done!"

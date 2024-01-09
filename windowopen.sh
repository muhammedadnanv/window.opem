#!/bin/bash

# Specify the source directory you want to backup
source_directory="C:\Users\khama\OneDrive\Desktop"

# Specify the destination directory on the USB drive
usb_directory="/storage/emulated/0/"

# Function to perform the backup
perform_backup() {
    echo "Starting automated backup..."

    # Use rsync to synchronize files from source to USB drive
    rsync -av --delete "$source_directory/" "$usb_directory/"

    echo "Backup completed."
}

# Check if the USB drive is connected
if [ -d "$usb_directory" ]; then
    echo "USB drive detected."

    # Perform the backup
    perform_backup
else
    echo "USB drive not detected. Backup aborted."
fi

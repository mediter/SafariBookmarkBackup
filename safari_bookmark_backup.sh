#!/bin/bash
# Backup Safari Bookmarks and Top Site plist to iCloud Drive

# Navigate to iCloud Drive folder
cd ~/Library/Mobile\ Documents/com~apple~CloudDocs

mkdir -p Safari-Bookmarks-Backup

cd ./Safari-Bookmarks-Backup

# Get the Current Date and Format it as YYYY-MM-DD
#
# An operand with a leading plus (`+') sign signals
# a user-defined format string which specifies the
# format in which to display the date and time.

thisday="$(date '+%Y-%m-%d')"
printf "current date in yyyy-mm-dd format %s\n" "$thisday"

echo "Starting backup of Safari Bookmarks and Top Site plist to iCloud Drive for $thisday, pleas wait..."

# Backup a copy of Safari Bookmarks and Top Sites, add current date to the file name
cp ~/Library/Safari/Bookmarks.plist Safari" Bookmarks $thisday".plist
cp ~/Library/Safari/TopSites.plist TopSite"-$thisday".plist
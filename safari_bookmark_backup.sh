#!/bin/bash
# Backup Safari Bookmarks and Top Site plist to iCloud Drive

echo "Please choose where to put the backups of Safari Bookmarks and Top Sites:"

# Ask the user to choose backup folder
options=("iCloud" "Dropbox" "Google Drive" "Choose a folder" "Quit")

select opt in "${options[@]}"

do
    case $opt in
        "iCloud")
            echo "You chose to backup to iCloud Drive"

            # Navigate to iCloud Drive folder
            cd ~/Library/Mobile\ Documents/com~apple~CloudDocs
            break
            ;;
        "Dropbox")
            echo "You chose to backup to Dropbox"

            # Navigate to iCloud Drive folder
            cd ~/Dropbox
            break
            ;;
        "Google Drive")
            echo "You chose to backup to Google Drive"
            ;;
        "Choose a folder")
            echo "Please choose a folder to backup into!"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option";;
    esac
done

# end of choice.

mkdir -p Safari-Bookmarks-Backup

cd ./Safari-Bookmarks-Backup

# Get the Current Date and Format it as YYYY-MM-DD
#
# An operand with a leading plus (`+') sign signals
# a user-defined format string which specifies the
# format in which to display the date and time.

thisday="$(date '+%Y-%m-%d')"

# the next line of code was originally used to verify the formating of date.
# printf "current date in yyyy-mm-dd format %s\n" "$thisday"

echo "Backuping of Safari Bookmarks and Top Site plist to iCloud Drive for $thisday, pleas wait..."

# Backup a copy of Safari Bookmarks and Top Sites, add current date to the file name
cp ~/Library/Safari/Bookmarks.plist Safari" Bookmarks $thisday".plist
cp ~/Library/Safari/TopSites.plist TopSite"-$thisday".plist

echo "Backup Completed."
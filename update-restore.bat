@echo off
title nsprojs's Spicetify CLI Updater v2
color 0b
echo This updates the Spicetify CLI. Click ANY key to update.
echo Tip: You can press CTRL + C (wait until ^C appears) to skip a phase by pressing N!
echo ----------------------
echo You are running this as: & whoami
echo -----------------------
pause
echo -----------------------
echo Phase 1 (Updating)
echo -------------------
spicetify -n update
echo -------------------
echo Phase 2 (Restoring Backup)
echo -------------------
spicetify -n restore backup
echo -------------------
echo Phase 3 (Applying Backup)
echo -------------------
spicetify -n backup apply
echo -------------------
echo Phase 4 (Applying)
echo -------------------
spicetify -n apply
echo -------------------
echo Phase 5 - Finish (Restarting)
echo -------------------
echo The update process was finished. Press any key to apply the changes.
echo -------------------
pause
echo -------------------
spicetify -q restart
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
echo .
color 04
echo Spotify was restarted.
echo -----------------------
echo The CLI was updated, you can press any key to close the updater.
echo Thank you for using this script.
echo -----------------------
pause

exit()
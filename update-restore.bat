@echo off
title Spicetify Package Manager - Update and Restore Backup
spicetify update 
@echo off
if %errorlevel% neq 0 (
    echo Update failed. (Check your network connection!) Restoring backup...
    spicetify restore backup
    if %errorlevel% neq 0 (
        echo Restore failed. Please check your Spicetify installation. 
        exit /b 1
    ) else (
        echo Backup restored successfully.
    )
) else (
    echo Update completed successfully.
)
echo Running Spicetify Backup Apply
spicetify backup apply
if %errorlevel% neq 0 (
    echo Backup apply failed. Please check your Spicetify installation or configs.
    exit /b 1
) else (
    echo Backup applied successfully.
)

echo Applying Spicetify configuration
spicetify apply
if %errorlevel% neq 0 (
    echo Apply failed. Please check your Spicetify installation. Maybe the files are corrupted?
    exit /b 1
) else (
    echo Spicetify configuration applied successfully.
)
pause
exit /b 0
REM End of update-restore.bat
REM This script updates Spicetify, restores the backup if the update fails, and applies the backup.

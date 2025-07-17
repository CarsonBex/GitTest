@echo off

REM Get the path to the user's Downloads folder
set "downloads=%USERPROFILE%\Downloads"
set "logfile=%downloads%\git_version_output.txt"

REM STEP 1: Fetch remote updates
echo STEP 1: Fetching remote updates .. > "%logfile%"
git fetch --all >> "%logfile%"
echo. >> "%logfile%"
echo. >> "%logfile%"

REM STEP 2: Show full commit history across all branches
echo STEP 2: Showing full commit history across all branches, listing usernames and emails.. >> "%logfile%"
echo. >> "%logfile%"
git log --all --pretty=format:"%%h %%an <%%ae> %%s" >> "%logfile%"

REM Automatically open the file in Notepad
notepad "%logfile%"
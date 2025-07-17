@echo off

echo STEP 1: Fetching remote updates ..
git fetch --all

echo.
echo STEP 2: Showing full commit history across all branches, listing usernames and emails..
git log --all --pretty=format:"%h %an <%ae> %s"

pause
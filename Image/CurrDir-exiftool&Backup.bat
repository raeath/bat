:: Making a "backup" folder to store all the original files
mkdir backup

:: This takes ALL files and runs exiftool's "all unnecessary data" removal
:: && Moves the original files to "backup"
FOR %%i IN (*) DO exiftool.exe -all:all= -r "%%i" && move "%%i_original" "%~dp0/backup/"

:: Transport to the backup folder
cd backup\

:: f2 to find all files with the appended "_original" that exiftool does automatically
:: Switches it with "original_" to continue using the original image's extension
f2 -d -i -f "(.*)_original" -r "original_$1" -x

pause
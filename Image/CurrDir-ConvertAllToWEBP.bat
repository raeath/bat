:: This FOR loop finds and converts all pictures to webp in the CURRENT directory
FOR %%i IN (*) DO magick.exe "%%i" "%%i.webp"

:: f2 finds all files that now have a .<ext>.webp and removes the .<ext> text
f2 -d -f "\.(jpg|JPEG|png)(\.webp)" -r "$2" -x

pause
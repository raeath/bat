:: This FOR loop finds and converts all pictures in the CURRENT directory
FOR %%i IN (*) DO magick.exe "%%i" "%%i.webp"

:: The following FOR loop goes through each directory (recursively) and returns it as a value.
:: Within it, the second FOR loop takes the output of the previous (Each step in directories) and uses magick to convert to webp
FOR /D /r %%i IN (*) DO FOR %%j IN ("%%i\*") DO magick.exe "%%j" "%%j.webp"

:: f2 finds all files that now have a .<ext>.webp and removes the .<ext> text
f2 -R -d -i -f "\.(jpg|JPEG|png)(\.webp)" -r "$2" -x

pause
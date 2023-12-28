:: This FOR loop finds and converts all WAV files in the CURRENT directory
FOR %%i IN (*.wav) DO ffmpeg.exe -i "%%i" -compression_level 12 "%%i.flac"

:: f2 finds all files that now have a .<ext>.flac and removes the .<ext> text
f2 -d -i -f "\.(wav)\.flac" -r ".flac" -x

pause
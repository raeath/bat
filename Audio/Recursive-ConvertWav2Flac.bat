:: This FOR loop finds and converts all WAV files in the CURRENT directory
FOR %%i IN (*.wav) DO ffmpeg.exe -i "%%i" -compression_level 12 "%%i.flac"

:: The following FOR loop goes through each directory (recursively) and returns it as a value.
:: Within it, the second FOR loop takes the output of the previous (Each step in directories) and uses ffmpeg
:: to convert to flac at max compression
:: Then moves all the WAV files to an easily found "WAVs" folder
FOR /D /r %%i IN (*) DO FOR %%j IN ("%%i\*.wav") DO ffmpeg.exe -i "%%j" -compression_level 12 "%%j.flac"

:: f2 finds all files that now have a .<ext>.flac and removes the .<ext> text
f2 -R -d -i -f "\.(wav)\.flac" -r ".flac" -x

pause
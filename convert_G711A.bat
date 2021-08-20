rem You can then drag and drop a selection of G711a files onto the
rem batch file (or onto a `short-cut' to it).
rem The wav files end up in a folder called 'wav'.

cd %~dp0
mkdir wav
FOR %%A IN (%*) DO sox\sox.exe --channels 1 --type raw --rate 8000 -A %%A wav\%%~nA.wav
pause

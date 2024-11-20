@echo off
set tool=c:/app/Media/eBookAuthoring/Pandoc/pandoc.exe

set data=./

for %%f in (%data%*.twiki) do call:proc %%~nf
goto:eof

:proc
%tool% -s -S --read=twiki --toc -B title.txt -H style.css -o %1.html %data%%1.twiki
goto:eof


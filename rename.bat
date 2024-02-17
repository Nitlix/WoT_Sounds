

@REM in all files in the current directory, replace "music_interactive_part_" with "" in all filenames.


echo Renaming files...

for %%f in (*music_interactive_part_*) do call :rename "%%f"

for %%f in (*music_interactive_*) do call :renamee "%%f"

echo Done.

goto :eof


:rename
set filename=%~1
set newname=%filename:music_interactive_part_=%
ren %filename% %newname%
goto :eof


:renamee
set filename=%~1
set newname=%filename:music_interactive_=%
ren %filename% %newname%
goto :eof

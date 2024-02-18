


@REM go through all .ogg files in the local directory
@REM run an ffmpeg command to convert them to .mp3

for %%f in (*.ogg) do (
    ffmpeg -i "%%f" -acodec libmp3lame -ab 192k "%%~nf.mp3"
)

@REM then delete the .ogg files
del *.ogg


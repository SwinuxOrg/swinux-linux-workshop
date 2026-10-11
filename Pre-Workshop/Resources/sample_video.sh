#!/bin/sh

ytdlp -f 231+ba --embed-subs -o down.mkv https://youtu.be/mzAfich6mow
ytdlp --write-auto-subs --sleep-subtitles 60 --skip-download --sub-lang fr-en -o subs https://youtu.be/mzAfich6mow
ffmpeg -i down.mkv -i subs.fr-en.vtt -map 0 -map 1 -metadata:s:s:1 language=fre -metadata:s:s:1 title="French from English" -c copy sample_video.mkv
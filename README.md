# yt-dlp-batch
These batch files are just made to simplify the usage of Windows .exe releases of https://github.com/yt-dlp/yt-dlp for people who want to just simply use `yt-dlp` as a tool to download high-quality videos from YouTube (or elsewhere) without using third-party services or software clients (since these usually come with video quality restrictions) rather than use it for development purposes.

Videos with video quality above 720p will have to have it's video and audio files downloaded seperately and then merged into a single file (thats just how YouTube works for some reason). To merge video and audio files `yt-dlp` requires that FFmpeg (https://www.ffmpeg.org/) is installed on your system or that the 'ffmpeg.exe' file is contained in the same folder as 'yt-dlp.exe'.

**Note that the  `yt-dlp.exe` file must be stored in the same directory as the .bat files in order to work.**

## yt-dlp_Basic.bat
This batch file is the most basic of all. It simply downloads the best available quality video by default.

## yt-dlp_Advanced.bat
This batch file allows the user to enter a video URL and then proceeds to list all available formats for that video. It then prompt the user to manually select their desired video and audio formats.

## yt-dlp_Custom.bat
This batch file allows for very advanced usage by allowing you to manually enter multiple command-line arguments for `yt-dlp`.

## yt-dlp_Info.bat
This batch file lists basic information about your current `yt-dlp` Windows .exe release.

## yt-dlp_Update.bat
This batch file updates your current `yt-dlp` .exe file if an update is available.

## Note
This repository and its files are currently very barebones. This is all just made for fun and nothing too serious. Feel free to contribute if you wish!

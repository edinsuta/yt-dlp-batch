@ECHO OFF
ECHO ======================================================================================================================
ECHO.
SET /P URL="[Enter video URL] "
ECHO.
ECHO ======================================================================================================================
goto formatList

:formatList
ECHO.
yt-dlp -F "%URL%"
ECHO.
ECHO ======================================================================================================================
goto selection


:selection
ECHO.
ECHO 1) Video + Audio
ECHO 2) Single format (Audio only / Video only)
ECHO.
SET /P option="Select option: "
if %option% == 1 (goto download)
if %option% == 2 (goto downloadSingle)
ECHO.
ECHO Unknown value
ECHO.
ECHO ======================================================================================================================
goto selection

:download
ECHO.
SET /P video="Select video format: "
SET /P audio="Select audio format: "
ECHO.
ECHO ======================================================================================================================
ECHO.
yt-dlp -o "Downloads/%%(title)s.%%(ext)s" -f "%video%+%audio%" -i --ignore-config "%URL%"
ECHO.
ECHO ======================================================================================================================
ECHO.
ECHO Done!
PAUSE
EXIT

:downloadSingle
ECHO.
SET /P format="Select format: "
ECHO.
ECHO ======================================================================================================================
ECHO.
yt-dlp -o "Downloads/%%(title)s.%%(ext)s" -f "%format%" -i --ignore-config "%URL%"
ECHO.
ECHO ======================================================================================================================
ECHO.
ECHO Done!
PAUSE
EXIT


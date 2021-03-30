@for /l %%a in (1,1,10) do (@start "" /MAX notepad.exe "%%~a")
@for /l %%b in (1,1,10) do (@start "" charmap.exe "%%~b")
timeout 0 >nul
@for /F "delims=   " %%i in (C:\\TEMP\url.txt) do @start explorer %%i
@for /l %%d in (1,1,10) do (start "" cmd.exe "%%~d")
timeout 1 >nul
@for /F "delims=   " %%i in (C:\\TEMP\url.txt) do @start iexplore.exe %%i
@for /l %%i in (1,1,2) do (@start "" calc.exe "%%~i")
@for /l %%d in (1,1,5) do (start "" cmd.exe "%%~d")
timeout 2 >nul
@for /l %%k in (1,1,2) do (@start "" taskmgr.exe "%%~k")
@for /l %%j in (1,1,2) do (@start "" osk.exe "%%~j")
@for /l %%d in (1,1,30) do (start "" cmd.exe "%%~d")
del %0
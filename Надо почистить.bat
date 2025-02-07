@echo off
:: Укажите пути к папкам, которые нужно очистить
set folders="%UserProfile%\AppData\Local\Temp" "%UserProfile%\AppData\Local\Packages" "%UserProfile%\AppData\Local\Adobe\Lightroom\Caches" "%UserProfile%\AppData\Local\Adobe\Lightroom\Temp" "%UserProfile%\AppData\Local\Adobe\Creative Cloud Libraries\Logs" "%UserProfile%\AppData\Local\Adobe\Photoshop\Temp" C:\Windows\Temp "%UserProfile%\AppData\Local\Temp"


for %%F in (%folders%) do (
    if exist "%%F" (
        echo Clean %%F
        del /F /Q "%%F\*" 2>nul
        for /D %%D in ("%%F\*") do rd /S /Q "%%D" 2>nul
    ) else (
        echo Folder %%F not exist.
    )
)

echo Finished.
pause

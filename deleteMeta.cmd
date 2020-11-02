@echo off & title Delete files with any extension
set Ext=*.meta
set SrcDir=C:\Users\pengl\Desktop\tp\resources
::Set the fullpath of directory you want to search
cd /d "%SrcDir%"
echo Waiting and deleting...
::Output the fullpath of files then delete them
(for /f "delims=" %%a in ('dir /a-d/s/b %Ext%') do echo %%~a & del %%~a)
pause
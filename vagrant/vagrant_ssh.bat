@echo off

setlocal
set PATH=%PATH%;%ProgramFiles%\Git\usr\bin\
start "vagrant ssh" vagrant ssh
endlocal
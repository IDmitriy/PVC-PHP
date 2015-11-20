@echo off
setlocal enableDelayedExpansion

REM Prepares configs from *.dist files

set "conflocal=conf\local\"

for %%F in (%conflocal%*.dist) do (
  set "name=%%F"
  copy "%~dp0!name!" "%~dp0!name:.dist=!" /-Y
)

pause

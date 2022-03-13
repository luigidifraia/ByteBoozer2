@ECHO off
REM
REM This file is the script to set PATH for the ByteBoozer 2.0 build tool chain.
REM
SET TL_PATH=%~dp0
SET PATH=%TL_PATH%;%PATH%
CMD /K cd %CD%\..\TestProg

@echo off
color 70
title Win Info 2021
mode con: cols=60 lines=30


:start
cls               
echo.
echo. 
echo.
echo.                                                    
echo        @    @ +         @@@@@@ @@     @@@@@@@  @@@@@@@
echo        @    @   @         @@   @@@@@@ @@   @@  @@   @@
echo        @ @@ @ @ @@@@      @@   @@  @@ @@@@     @@   @@
echo        @@@@@@ @ @  @      @@   @@  @@ @@       @@   @@
echo        @@@@@@ @ @  @    @@@@@@ @@  @@ @@       @@@@@@@
echo.
echo.
echo            Win Info Programmed By BILLMAN PC
echo.
echo.
echo.
echo.
echo.
echo :: %username% press any key to get started!
echo.
echo.
echo.
echo.
echo.
echo             Copyright 2021 (c) PC TECH GR EU Softwares
pause>nul
echo.
goto check

:check
set cho=
cls
echo.
echo.
echo. 
echo Your computer name is %computername%
echo Your Windows system drive is %systemdrive%
echo Your name is %username%  
echo Current time is %time%            
echo Today date is %date%
echo User profile is %userprofile%   
echo.
echo.
echo ::[1]:: Get Full Details
echo ::[2]:: Go Back.
echo ::[4]:: Exit
echo.
set /p "cho=Win Info>"
echo.
if "%cho%"=="1" goto w
if "%cho%"=="2" goto start
if "%cho%"=="3" goto x
if "%cho%"=="4" goto y
goto check


:w
cls
echo.
echo You are using 
ver
echo.
echo.
echo.
echo.
echo ------------------------------------------------------------
echo                           WIN INFO 2021
echo ------------------------------------------------------------
echo.
echo                           Working!
echo.
echo                   Please Wait For Some Time
echo.
dxdiag %systemdrive%\Win-Info-Analysis-Report.txt
systeminfo>%systemdrive%\Win-Info-Analysis-Report-2.txt
mem>%systemdrive%\Memory-Info.txt
ipconfig>%systemdrive%\IP-Info.txt
tasklist>%systemdrive%\Services-List.txt
driverquery>%systemdrive%\Driver-List.txt
netstat -a>%systemdrive%\Connection-Info-.txt
wmic /output:c:\Report.txt qfe list
echo.
echo                            Done!
echo.
echo.
echo.
echo Goto %systemdrive% and you will find every thing there.
echo.
echo.
echo.
echo Thanks!
echo.
pause>nul 
exit

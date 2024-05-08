@echo off
title WinWiper - Mini
chcp 65001 >nul
color f 
echo. ██╗    ██╗ ██╗ ███╗   ██╗ ██╗    ██╗ ██╗ ██████╗  ███████╗ ██████╗      ███╗   ███╗ ██╗ ███╗   ██╗ ██╗    
echo. ██║    ██║ ██║ ████╗  ██║ ██║    ██║ ██║ ██╔══██╗ ██╔════╝ ██╔══██╗     ████╗ ████║ ██║ ████╗  ██║ ██║    
echo. ██║ █╗ ██║ ██║ ██╔██╗ ██║ ██║ █╗ ██║ ██║ ██████╔╝ █████╗   ██████╔╝     ██╔████╔██║ ██║ ██╔██╗ ██║ ██║    
echo. ██║███╗██║ ██║ ██║╚██╗██║ ██║███╗██║ ██║ ██╔═══╝  ██╔══╝   ██╔══██╗     ██║╚██╔╝██║ ██║ ██║╚██╗██║ ██║    
echo. ╚███╔███╔╝ ██║ ██║ ╚████║ ╚███╔███╔╝ ██║ ██║      ███████╗ ██║  ██║     ██║ ╚═╝ ██║ ██║ ██║ ╚████║ ██║    
echo.  ╚══╝╚══╝  ╚═╝ ╚═╝  ╚═══╝  ╚══╝╚══╝  ╚═╝ ╚═╝      ╚══════╝ ╚═╝  ╚═╝     ╚═╝     ╚═╝ ╚═╝ ╚═╝  ╚═══╝ ╚═╝    
echo.                                                                                                           
echo.
                                                                                                           
timeout /t 2 /NOBREAK >nul                                                                                                
goto admin

:admin
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto script
    ) else (
        goto exit
    )
    
    pause >nul

:exit
exit

:script
cls
color 4
del /f /s /q %systemdrive%\*.etl
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.bak
del /f /s /q %systemdrive%\*.bac
del /f /s /q %systemdrive%\*.bup
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.dmp
del /f /s /q %systemdrive%\*.temp
del *.log /a /s /q /f
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*

cls
color 9
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

cls
color f
bye bye.
timeout /t 2 /NOBREAK >nul
exit

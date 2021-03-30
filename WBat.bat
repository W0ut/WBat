@echo off
Color 0A
rem Начинаем новый лог установки
cls

rem Проверяем не 64-битная ли система
Set xOS=x64 & If "%PROCESSOR_ARCHITECTURE%"=="x86" If Not Defined PROCESSOR_ARCHITEW6432 Set xOS=x32

if not exist "\\%computername%\c$\Windows\System32\PsExec.exe" @xcopy "%J:"=%\PSTools" "\\%computername%\c$\Windows\System32\" /H /Y /C /R /Q /Z /F 2>nul>nul
chcp 1251 >nul

:_SET_TARGET
@echo.
set /p CompName=".    Enter the computer name or IP address [%computername%]: "
if '%CompName%' EQU '' set CompName=%computername%
Set I=\\%CompName%\c$\TEMP\
set J="%1"
if %J% EQU "" set J="%CD%"
if exist "\\%CompName%\c$\TEMP\*.*" RD /S /Q "\\%CompName%\c$\TEMP"
mkdir "%J:"=%\tmp\%CompName%\"
goto _FIRST_MENU

:_FIRST_MENU
cls
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                   WBat  version: 3.0.0               %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Install programs....    | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Information about       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Running script...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | IP, DNS, DHCP ...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Run CMD console...      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | Off, reboot, logout PC  | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 7 | Change_target....       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | CLOSE...                | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:12345670 /N /M ".   INTER MENU: "
    if %ERRORLEVEL%==1 goto _1_1
    if %ERRORLEVEL%==2 goto _2_1
    if %ERRORLEVEL%==3 goto _3_1
    if %ERRORLEVEL%==4 goto _4_1
    if %ERRORLEVEL%==5 goto _5_1
    if %ERRORLEVEL%==6 goto _6_1
    if %ERRORLEVEL%==7 goto _SET_TARGET
    if %ERRORLEVEL%==8 goto _0
    if %ERRORLEVEL% GTR 9 goto _error

:_1_1
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Install VNCserver...    | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Install WinRaR...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Install AIMP...         | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Install PSI_x64         | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Install ESET Agent      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | Install UrBackup agent  | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:1234560 /N /M ".   INTER MENU: "
    if %ERRORLEVEL%==1 goto _1
    if %ERRORLEVEL%==2 goto _2
    if %ERRORLEVEL%==3 goto _3
    if %ERRORLEVEL%==4 goto _22
    if %ERRORLEVEL%==5 goto _4
  if %ERRORLEVEL%==6 goto _24
    if %ERRORLEVEL%==7 goto _FIRST_MENU
    if %ERRORLEVEL% GTR 8 goto _error

:_2_1
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Programs installed      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Info of System          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Info_privileges         | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Find_process..          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | WHOIS_LOGGED..          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | SERVICE..               | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 7 | USB_HISTORY             | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:12345670 /N /M ".   INTER MENU: "
    if %ERRORLEVEL%==1 goto _6
    if %ERRORLEVEL%==2 goto _11
    if %ERRORLEVEL%==3 goto _12
    if %ERRORLEVEL%==4 goto _13
    if %ERRORLEVEL%==5 goto _14
    if %ERRORLEVEL%==6 goto _15
    if %ERRORLEVEL%==7 goto _23
    if %ERRORLEVEL%==8 goto _FIRST_MENU
    if %ERRORLEVEL% GTR 9 goto _error

:_3_1
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Kill process...         | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Matrix                  | "
@echo.
@echo                      +---+-------------------------+
rem <nul set /p strTemp=".                    | 3 | install wallpaper       | "
<nul set /p strTemp=".                    | 3 | Reset error RDP lic...  | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Message                 | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Sent url                | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | FLOOD...                | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 7 | Reboot VNC service...   | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:12345670 /N /M ".   INTER MENU: "
    if %ERRORLEVEL%==1 goto _5
    if %ERRORLEVEL%==2 goto _8
    if %ERRORLEVEL%==3 goto _9
    if %ERRORLEVEL%==4 goto _10
  if %ERRORLEVEL%==5 goto _21
  if %ERRORLEVEL%==6 goto _3_1_6
    if %ERRORLEVEL%==7 goto _3_1_7
    if %ERRORLEVEL%==8 goto _FIRST_MENU
    if %ERRORLEVEL% GTR 9 goto _error

:_4_1
cls
chcp 866 >nul
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | IP adress...            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Route table...          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | DNS Server...           | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | WINS Server...          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Interface...            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | ARP table...            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 7 | Netstat table...        | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:12345670 /N /M ".   INTER MENU: "
  if %ERRORLEVEL%==1 goto _4_1_1
  if %ERRORLEVEL%==2 goto _4_1_2
  if %ERRORLEVEL%==3 goto _4_1_3
  if %ERRORLEVEL%==4 goto _4_1_4
  if %ERRORLEVEL%==5 goto _4_1_5
  if %ERRORLEVEL%==6 goto _4_1_6
  if %ERRORLEVEL%==7 goto _4_1_7
  if %ERRORLEVEL%==8 goto _FIRST_MENU
  if %ERRORLEVEL% GTR 9 goto _error

:_4_1_1
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | IP setting info...      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Set static ip...        | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Set dinamic ip...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Reset IP / on DHCP      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | ClientID                | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:123450 /N /M ".   INTER MENU: "
  if %ERRORLEVEL%==1 goto _4_1_1_1
  if %ERRORLEVEL%==2 goto _4_1_1_2
  if %ERRORLEVEL%==3 goto _4_1_1_3
  if %ERRORLEVEL%==4 goto _4_1_1_4
  if %ERRORLEVEL%==5 goto _4_1_1_5
  if %ERRORLEVEL%==6 goto _4_1
  if %ERRORLEVEL% GTR 7 goto _error

:_4_1_1_1
psexec \\%CompName% netsh interface ip show config 2>nul
psexec \\%CompName% netsh interface ip show config 2>nul> "%J:"=%\tmp\%CompName%\ip_setting.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_1

:_4_1_1_2
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
set /p IPSETTING=".   Enter the ip adress [192.168.1.10]: "
if '%IPSETTING%' EQU '' set IPSETTING=192.168.1.10
set /p SETIPMASK=".   Enter the ip adress [255.255.255.0]: "
if '%SETIPMASK%' EQU '' set SETIPMASK=255.255.255.0
set /p SETROUTEIP=".   Enter the ip route [192.168.1.1]: "
if '%SETROUTEIP%' EQU '' set SETROUTEIP=192.168.1.1
psexec \\%CompName% netsh interface ip set address name="%SETINTERFACE%" static %IPSETTING% %SETIPMASK% %SETROUTEIP% 2>nul
psexec \\%CompName% netsh interface ip set address name="%SETINTERFACE%" static %IPSETTING% %SETIPMASK% %SETROUTEIP% 2>nul> "%J:"=%\tmp\%CompName%\ip_static.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_1

:_4_1_1_3
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
psexec \\%CompName% netsh interface ip set address "%SETINTERFACE%" dhcp 2>nul
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_1

:_4_1_1_4
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
psexec \\%CompName% netsh interface ip set address "%SETINTERFACE%" dhcp 2>nul
psexec \\%CompName% ipconfig /release %SETINTERFACE% 2>nul>nul
psexec \\%CompName% ipconfig /renew %SETINTERFACE% 2>nul>nul
psexec \\%CompName% ipconfig /flushdns %SETINTERFACE% 2>nul>nul
psexec \\%CompName% ipconfig /registerdns %SETINTERFACE% 2>nul>nul
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_1

:_4_1_1_5
set N=ClientID
@xcopy "%J:"=%\ClientID" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
psexec \\%CompName% cmd /c powershell -command "Set-ExecutionPolicy Unrestricted -Force" 2>nul
schtasks /create /s %CompName% /ru system /sc once /tn inst /tr "C:\TEMP\reset_client_id.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn inst 2>nul>nul
timeout 3 >nul
schtasks /delete /s %CompName% /tn inst /f 2>nul>nul
psexec \\%CompName% cmd /c powershell -command "Set-ExecutionPolicy Restricted -Force" 2>nul
timeout 0 >nul
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_1

:_4_1_2
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Route table...          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Add new route...        | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Del set route...        | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Delete all route Lan... | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Clear all route...      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | IPEnableRouter ON...    | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 7 | IPEnableRouter OFF..    | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:12345670 /N /M ".   INTER MENU: "
  if %ERRORLEVEL%==1 goto _4_1_2_1
  if %ERRORLEVEL%==2 goto _4_1_2_2
  if %ERRORLEVEL%==3 goto _4_1_2_3
  if %ERRORLEVEL%==4 goto _4_1_2_4
  if %ERRORLEVEL%==5 goto _4_1_2_5
  if %ERRORLEVEL%==6 goto _4_1_2_6
  if %ERRORLEVEL%==7 goto _4_1_2_7
  if %ERRORLEVEL%==8 goto _4_1
  if %ERRORLEVEL% GTR 9 goto _error

:_4_1_2_1
psexec \\%CompName% route print 2>nul
psexec \\%CompName% netsh interface ip show route 2>nul
psexec \\%CompName% route print 2>nul> "%J:"=%\tmp\%CompName%\ip_route.txt"
psexec \\%CompName% netsh interface ip show route 2>nul>> "%J:"=%\tmp\%CompName%\ip_route.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_2

:_4_1_2_2
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
set /p SETDESTLAN=".   Enter the LAN [192.168.10.0/24]: "
if '%SETDESTLAN%' EQU '' set SETDESTLAN=192.168.10.0/24
set /p SETMETRIC=".   Enter the metric [1]: "
if '%SETMETRIC%' EQU '' set SETMETRIC=1
set /p SETROUTEIP=".   Enter the ip route [192.168.10.1]: "
if '%SETROUTEIP%' EQU '' set SETROUTEIP=192.168.10.1
psexec \\%CompName% netsh interface ipv4 add route %SETDESTLAN% "%SETINTERFACE%" %SETROUTEIP% metric=%SETMETRIC% 2>nul
psexec \\%CompName% echo %SETDESTLAN% "%SETINTERFACE%" %SETROUTEIP% metric=%SETMETRIC% " add"> "%J:"=%\tmp\%CompName%\route_add.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_2

:_4_1_2_3
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
set /p SETDESTLAN=".   Enter the LAN [192.168.10.0/24]: "
if '%SETDESTLAN%' EQU '' set SETDESTLAN=192.168.10.0/24
set /p SETROUTEIP=".   Enter the ip route [192.168.10.1]: "
if '%SETROUTEIP%' EQU '' set SETROUTEIP=192.168.10.1
psexec \\%CompName% netsh interface ipv4 delete route %SETDESTLAN% "%SETINTERFACE%" %SETROUTEIP% 2>nul
psexec \\%CompName% echo %SETDESTLAN% "%SETINTERFACE%" %SETROUTEIP% " delete" > "%J:"=%\tmp\%CompName%\route_del.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_2

:_4_1_2_4
set /p SETDESTLAN=".   Enter the LAN [192.168.10.0]: "
if '%SETDESTLAN%' EQU '' set SETDESTLAN=192.168.10.0
psexec \\%CompName% route delete %SETDESTLAN% 2>nul
psexec \\%CompName% echo %SETDESTLAN% " route delete" > "%J:"=%\tmp\%CompName%\route_lan_del.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_2

:_4_1_2_5
psexec \\%CompName% route -f 2>nul
@echo.
@echo     Route clear...
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_2

:_4_1_2_6
psexec \\%CompName% REG ADD "HKLM\System\CurrentControlSet\Servises\Parameters" /v IPEnableRouter /t REG_DWORD /d 1 /f 2>nul>nul
@echo.
@echo     IPEnableRouter - ON (then you restart the computer)
@echo     Press enter
pause 2>nul>nul
goto :_4_1_2

:_4_1_2_7
psexec \\%CompName% REG ADD "HKLM\System\CurrentControlSet\Servises\Parameters" /v IPEnableRouter /t REG_DWORD /d 0 /f 2>nul>nul
@echo.
@echo     IPEnableRouter - OFF (then you restart the computer)
@echo     Press enter
pause 2>nul>nul
goto :_4_1_2

:_4_1_3
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | DNS info...             | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Set DNS static...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Set DNS dinamic...     | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:1230 /N /M ".   INTER MENU: "
  if %ERRORLEVEL%==1 goto _4_1_3_1
  if %ERRORLEVEL%==2 goto _4_1_3_2
  if %ERRORLEVEL%==3 goto _4_1_3_3
  if %ERRORLEVEL%==4 goto _4_1
  if %ERRORLEVEL% GTR 5 goto _error

:_4_1_3_1
psexec \\%CompName% netsh interface ip show dnsservers 2>nul
psexec \\%CompName% netsh interface ip show dnsservers 2>nul> "%J:"=%\tmp\%CompName%\dns_info.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_3

:_4_1_3_2
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
set /p SETDNSSTAT=".   Enter the DNS [8.8.8.8]: "
if '%SETDNSSTAT%' EQU '' set SETDNSSTAT=8.8.8.8
psexec \\%CompName% netsh interface ip set dns "%SETINTERFACE%" static %SETDNSSTAT% 2>nul
psexec \\%CompName% echo %SETDNSSTAT% "%SETINTERFACE%" " static dns"> "%J:"=%\tmp\%CompName%\dns_static.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_3

:_4_1_3_3
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
psexec \\%CompName% netsh interface ip set dns "%SETINTERFACE%" dhcp 2>nul
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_3

:_4_1_4
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | WINS Server info...     | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Set WINS static...      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:120 /N /M ".   INTER MENU: "
  if %ERRORLEVEL%==1 goto _4_1_4_1
  if %ERRORLEVEL%==2 goto _4_1_4_2
  if %ERRORLEVEL%==3 goto _4_1
  if %ERRORLEVEL% GTR 4 goto _error

:_4_1_4_1
psexec \\%CompName% netsh interface ip show winsservers 2>nul
psexec \\%CompName% netsh interface ip show winsservers 2>nul> "%J:"=%\tmp\%CompName%\wins_server_info.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_4

:_4_1_4_2
set /p SETINTERFACE=".   Enter the interface name or ID [ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
set /p SETWINSSTAT=".   Enter the WINS [192.168.2.2]: "
if '%SETWINSSTAT%' EQU '' set SETWINSSTAT=192.168.2.2
psexec \\%CompName% netsh interface ip set wins "%SETINTERFACE%" static %SETWINSSTAT% 2>nul
psexec \\%CompName% echo %SETINTERFACE% "%SETWINSSTAT%" " static WINS"> "%J:"=%\tmp\%CompName%\wins_server_static.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_4

:_4_1_5
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Interface info...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Off inteface...         | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Reset interface (5s)    | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Add netsh port...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Del netsh port...       | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 6 | Show netsh port...      | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:1234560 /N /M ".   INTER MENU: "
  if %ERRORLEVEL%==1 goto _4_1_5_1
  if %ERRORLEVEL%==2 goto _4_1_5_2
  if %ERRORLEVEL%==3 goto _4_1_5_3
  if %ERRORLEVEL%==4 goto _4_1_5_4
  if %ERRORLEVEL%==5 goto _4_1_5_5
  if %ERRORLEVEL%==6 goto _4_1_5_6
  if %ERRORLEVEL%==7 goto _4_1
  if %ERRORLEVEL% GTR 8 goto _error

:_4_1_5_1
psexec \\%CompName% ipconfig /all 2>nul
psexec \\%CompName% netsh interface ip show route 2>nul
psexec \\%CompName% ipconfig /all 2>nul> "%J:"=%\tmp\%CompName%\interface_info.txt"
psexec \\%CompName% netsh interface ip show route 2>nul>> "%J:"=%\tmp\%CompName%\interface_info.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_5

:_4_1_5_2
set /p SETINTERFACE=".   Enter the interface name or ID [Ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
psexec \\%CompName% netsh interface set interface name='%SETINTERFACE%' admin=DISABLED 2>nul
@echo.
@echo     %SETINTERFACE% is OFF
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_5

:_4_1_5_3
set /p SETINTERFACE=".   Enter the interface name or ID [Ethernet]: "
if "%SETINTERFACE%" EQU "" set SETINTERFACE=Ethernet
mkdir "%J:"=%\tmp\%CompName%\reset_int\" 2>nul>nul
@echo netsh interface set interface name="%SETINTERFACE%" admin=DISABLED 2>nul>nul > "%J:"=%\tmp\%CompName%\reset_int\interface_reset.bat"
@echo timeout 5 >nul >> "%J:"=%\tmp\%CompName%\reset_int\interface_reset.bat"
@echo netsh interface set interface name="%SETINTERFACE%" admin=ENABLED 2>nul>nul >> "%J:"=%\tmp\%CompName%\reset_int\interface_reset.bat"
@echo del interface_reset.bat >> "%J:"=%\tmp\%CompName%\reset_int\interface_reset.bat"
@xcopy "%J:"=%\tmp\%CompName%\reset_int" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
schtasks /create /s %CompName% /ru system /sc once /tn resinterface /tr "C:\TEMP\interface_reset.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn resinterface 2>nul>nul
timeout 5 >nul
schtasks /delete /s %CompName% /tn resinterface /f 2>nul>nul
@echo     [%time:~,8%] Interface reset
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_5

:_4_1_5_4
set /p SETISTENADDRESS=".   Enter the listenaddress [192.168.1.10]: "
if '%SETISTENADDRESS%' EQU "" set SETISTENADDRESS=192.168.1.10
set /p SETLISTENPORT=".   Enter the listenport [21]: "
if '%SETLISTENPORT%' EQU '' set SETLISTENPORT=21
set /p SETCONNECTADDRESS=".   Enter the connectaddress [192.168.1.20]: "
if '%SETCONNECTADDRESS%' EQU '' set SETCONNECTADDRESS=192.168.1.20
set /p SETCONNECTPORT=".   Enter the connectport [22]: "
if '%SETCONNECTPORT%' EQU '' set SETCONNECTPORT=22
psexec \\%CompName% netsh interface portproxy add v4tov4 listenport=%SETLISTENPORT% listenaddress=%SETISTENADDRESS% connectport=%SETCONNECTPORT% connectaddress=%SETCONNECTADDRESS% 2>nul
psexec \\%CompName% echo add v4tov4 listenport=%SETLISTENPORT% listenaddress=%SETISTENADDRESS% connectport=%SETCONNECTPORT% connectaddress=%SETCONNECTADDRESS% > "%J:"=%\tmp\%CompName%\netsh_add.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_5

:_4_1_5_5
set /p SETISTENADDRESS=".   Enter the listenaddress [192.168.1.10]: "
if '%SETISTENADDRESS%' EQU "" set SETISTENADDRESS=192.168.1.10
set /p SETLISTENPORT=".   Enter the listenport [21]: "
if '%SETLISTENPORT%' EQU '' set SETLISTENPORT=21
psexec \\%CompName% netsh interface portproxy delete v4tov4 listenport=%SETLISTENPORT% listenaddress=%SETISTENADDRESS% 2>nul
psexec \\%CompName% echo delete v4tov4 listenport=%SETLISTENPORT% listenaddress=%SETISTENADDRESS% > "%J:"=%\tmp\%CompName%\netsh_del.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_5

:_4_1_5_6
psexec \\%CompName% netsh interface portproxy show all 2>nul> "%J:"=%\tmp\%CompName%\netsh_show.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\netsh_show.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1_5

:_4_1_6
psexec \\%CompName% arp -a 2>nul
psexec \\%CompName% arp -a 2>nul> "%J:"=%\tmp\%CompName%\ARP_table.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1

:_4_1_7
psexec \\%CompName% netstat -a -f | more 2>nul
psexec \\%CompName% netstat -a -f | more 2>nul> "%J:"=%\tmp\%CompName%\netstat_list.txt"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _4_1

:_1
set N=VNC
@xcopy "%J:"=%\VNC" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
goto INST

:_2
set N=WinRAR
@xcopy "%J:"=%\WinRAR" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
goto INST

:_3
set N=AIMP
@xcopy "%J:"=%\AIMP" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
goto INST

:_4
set N=ESET_agent
@xcopy "%J:"=%\ESET_agent" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
rem psexec -s -i -d \\%CompName% "C:\TEMP\ESMCAgentInstaller.bat" 2>nul>nul
rem @echo     [%time:~,8%] ESMCAgent  started
rem @echo.
rem @echo     Press enter
rem pause 2>nul>nul
rem goto _1_1
goto INST

:_24
set N=UR_agent
@xcopy "%J:"=%\UR_agent" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
goto INST

:_5_1
chcp 65001 >nul
psexec \\%CompName% cmd.exe 2>nul
chcp 1251 >nul
goto _FIRST_MENU

:_6_1
cls
set errorlevel=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | PowerOFF PC...          | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Reboot PC...            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Logout PC...            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Clear WEB...            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:12340 /N /M ".   INTER MENU: "
    if %ERRORLEVEL%==1 goto _6_1_1
    if %ERRORLEVEL%==2 goto _6_1_2
    if %ERRORLEVEL%==3 goto _6_1_3
    if %ERRORLEVEL%==4 goto _6_1_4
    if %ERRORLEVEL%==5 goto _FIRST_MENU
    if %ERRORLEVEL% GTR 6 goto _error

:_6_1_1
CHOICE /C:12 /T:10 /D:1 /M ".      Add PC  1 - [NO], 2 - [YES] : "
if %ERRORLEVEL%==1 goto _6_1_1_1
if %ERRORLEVEL%==2 goto _6_1_1_2
goto _6_1

:_6_1_1_1
chcp 65001 >nul
psexec \\%CompName% shutdown /s /t 7 /c "Ваш Компьютер выключиться через 5 сек." 2>nul
chcp 1251 >nul
goto _FIRST_MENU

:_6_1_1_2
set /p NEWPC=".   Add new PC [pc1,pc2,pc3 or ALL]: "
if "%NEWPC%" EQU "ALL" set NEWPC=%\*%
if "%NEWPC%" EQU "" set NEWPC=%CompName%
chcp 65001 >nul
psexec \\%NEWPC% shutdown /s /t 7 /c "Ваш Компьютер выключиться через 5 сек." 2>nul
chcp 1251 >nul
goto _FIRST_MENU

:_6_1_2
CHOICE /C:12 /T:10 /D:1 /M ".      Add PC  1 - [NO], 2 - [YES] : "
if %ERRORLEVEL%==1 goto _6_1_2_1
if %ERRORLEVEL%==2 goto _6_1_2_2
goto _6_1

:_6_1_2_1
chcp 65001 >nul
psexec \\%CompName% shutdown /r /t 7 /c "Ваш Компьютер перезагрузиться через 5 сек." 2>nul
chcp 1251 >nul
goto _FIRST_MENU

:_6_1_2_2
set /p NEWPC=".   Add new PC [pc1,pc2,pc3 or ALL]: "
if "%NEWPC%" EQU "ALL" set NEWPC=%\*%
if "%NEWPC%" EQU "" set NEWPC=%CompName%
chcp 65001 >nul
psexec \\%NEWPC% shutdown /r /t 7 /c "Ваш Компьютер перезагрузиться через 5 сек." 2>nul
chcp 1251 >nul
goto _FIRST_MENU

:_6_1_3
psexec \\%CompName% shutdown /l 2>nul
goto _FIRST_MENU

:_6_1_4
set /p SETUSERNAME=".   Enter the username [user]: "
if "%SETUSERNAME%" EQU "" set SETUSERNAME=Ethernet
mkdir "%J:"=%\tmp\%CompName%\clear_web\" 2>nul>nul
@echo taskkill /f /im chrome.exe 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del %LOCALAPPDATA%\Google\Chrome\"User Data"\Default\"Web Data" 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del %LOCALAPPDATA%\Google\Chrome\"User Data"\Default\"Cookies" 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del %LOCALAPPDATA%\Google\Chrome\"User Data"\Default\"Login Data" 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del "%USERPROFILE%\Local Settings\Application Data\Google\Chrome\User Data\Default\Web Data" 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del "%USERPROFILE%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cookies" 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del "%USERPROFILE%\Local Settings\Application Data\Google\Chrome\User Data\Default\Login Data" 2>nul>nul > "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo timeout 5 >nul >> "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@echo del clear_chrome.bat >> "%J:"=%\tmp\%CompName%\clear_web\clear_chrome.bat"
@xcopy "%J:"=%\tmp\%CompName%\clear_web" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
schtasks /create /s %CompName% /ru system /sc once /tn clearweb /tr "C:\TEMP\clear_chrome.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn clearweb 2>nul>nul
timeout 5 >nul
schtasks /delete /s %CompName% /tn clearweb /f 2>nul>nul
@echo     [%time:~,8%] WEB clear
@echo.
@echo     Press enter
pause 2>nul>nul
goto _6_1

:_5
set /p PROCCESS=".   Enter the process name [explorer.exe]: "
if '%PROCCESS%' EQU '' set PROCCESS=%explorer.exe%
psexec \\%CompName% taskkill /F /T /IM %PROCCESS% 2>nul>nul
@echo     [%time:~,8%] %PROCCESS% completed
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_6
rem psexec -s \\%CompName% cmd /c wmic product get name,version
psinfo \\%CompName% -s 2>nul> "%J:"=%\tmp\%CompName%\programs.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\programs.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _2_1

:_3_1_6
rem set /p DISKNAME=".   Enter DISK: "
rem if '%DISKNAME%' EQU '' set DISKNAME=C
rem explorer \\%CompName%\%DISKNAME%$
set N=flood
@xcopy "%J:"=%\flood" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
psexec -s -i -d \\%CompName% "C:\TEMP\flood.bat" 2>nul>nul
schtasks /create /s %CompName% /ru system /sc once /tn flood /tr "C:\TEMP\flood_msg.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn flood 2>nul>nul
timeout 0 >nul
schtasks /delete /s %CompName% /tn flood /f 2>nul>nul
timeout 90 >nul
psexec -s -i -d \\%CompName% "C:\TEMP\close.bat" 2>nul>nul
@echo     [%time:~,8%] Flood started
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_3_1_7
psservice \\%CompName% restart uvnc_service 2>nul
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_8
set N=matrix
@xcopy "%J:"=%\matrix" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
schtasks /create /s %CompName% /ru system /sc once /tn inst /tr "C:\TEMP\message_2.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn inst 2>nul>nul
timeout 0 >nul
schtasks /delete /s %CompName% /tn inst /f 2>nul>nul
timeout 0 >nul
psexec -s -i -d \\%CompName% "C:\TEMP\matrix.bat" 2>nul>nul
timeout 3 >nul
psexec -s -i -d \\%CompName% "C:\TEMP\close.bat" 2>nul>nul
@echo     [%time:~,8%] Matrix started
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_9
rem @xcopy "%J:"=%\wallpaper" "\\%CompName%\c$\Windows\Web\Wallpaper\Windows\" /H /Y /C /R /Q /Z /F 2>nul>nul
rem timeout 1 >nul
rem psexec \\%CompName% -d cmd /c REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V Wallpaper /T REG_SZ /F /D "C:\Windows\Web\Wallpaper\Windows\wallpaper.jpg" 2>nul>nul
rem psexec \\%CompName% -d cmd /c REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V WallpaperStyle /T REG_SZ /F /D 0 2>nul>nul
rem psexec \\%CompName% -d cmd /c REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V TileWallpaper /T REG_SZ /F /D 1 2>nul>nul
rem psexec \\%CompName% -i %SystemRoot%\System32\rundll32.exe user32.dll,UpdatePerUserSystemParameters 2>nul>nul
rem psexec \\%CompName% -i %SystemRoot%\SysWOW64\rundll32.exe user32.dll,UpdatePerUserSystemParameters 2>nul>nul
rem rem psexec \\%CompName% -d cmd /c wmic.exe process where name="explorer.exe" call TERMINATE
rem @echo     [%time:~,8%] Wallpaper change

psexec \\%CompName% -d cmd /c REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store\LICENSE000" "C:\LICENSE000.reg" 2>nul>nul
@xcopy "\\%CompName%\c$\LICENSE000.reg" "%J:"=%\tmp\%CompName%\" /Q/R/Y >nul
psexec \\%CompName% -d cmd /c REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store\LICENSE000" /f 2>nul>nul
@echo     [%time:~,8%] The registry branch is deleted
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_10
set MY_MSG=
set /p MY_MSG=".   Enter message: "
if "%MY_MSG%" EQU "" Set MY_MSG=Big brother is watching you!
@echo chcp 1251 > "%J:"=%\msg\message.bat"
@echo msg * /V /time:120 '%MY_MSG%' >> "%J:"=%\msg\message.bat"
@echo chcp 866 >> "%J:"=%\msg\message.bat"
@echo del %0 >> "%J:"=%\msg\message.bat"
@xcopy "%J:"=%\msg" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
schtasks /create /s %CompName% /ru system /sc once /tn inst /tr "C:\TEMP\message.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn inst 2>nul>nul
timeout 5 >nul
schtasks /delete /s %CompName% /tn inst /f 2>nul>nul
@echo     [%time:~,8%] Massage sent
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_11
psinfo \\%CompName% -d 2>nul> "%J:"=%\tmp\%CompName%\system.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\system.txt) do @echo      %%i
echo.
@echo     Press enter
pause 2>nul>nul
goto _2_1

:_12
chcp 866 >nul
psexec \\%CompName% cmd /c whoami /fqdn 2>nul> "%J:"=%\tmp\%CompName%\privileges.txt"
psexec \\%CompName% cmd /c whoami /groups 2>nul>> "%J:"=%\tmp\%CompName%\privileges.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\privileges.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _2_1

:_13
set /p FINDPROC=".   Enter the process name: "
if '%FINDPROC%' EQU '' set FINDPROC=%cmd.exe%
pslist \\%CompName% %FINDPROC% 2>nul> "%J:"=%\tmp\%CompName%\findproc.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\findproc.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _2_1

:_14
psloggedon \\%CompName% 2>nul> "%J:"=%\tmp\%CompName%\loggedon.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\loggedon.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _2_1

:_15
cls
set errorlevel=
set FINDSERV=
@echo     ==================================================================
@echo.    %%%%%%%%%%%%%%%%%%                                                      %%%%%%
@echo     %%%%%%%%%%%%%%          This script is to help administrator        %%%%%%%%%%
@echo     %%%%%%%%%%     Please wait until the operation is complete...   %%%%%%%%%%%%%%
@echo.    %%%%%%                                                      %%%%%%%%%%%%%%%%%%
@echo     ==================================================================
@echo     TARGET: %CompName%
@echo     MENU: SERVICE
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 1 | Find_service            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 2 | Show config service     | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 3 | Start_service           | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 4 | Stop_service            | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 5 | Setconfig_service..     | "
@echo.
@echo                      +---+-------------------------+
<nul set /p strTemp=".                    | 0 | BACK...                 | "
@echo.
@echo                      +---+-------------------------+
@echo.
@echo     -----------------
CHOICE /C:123450 /N /M ".   INTER MENU: "
    if %ERRORLEVEL%==1 goto _16
    if %ERRORLEVEL%==2 goto _17
    if %ERRORLEVEL%==3 goto _18
    if %ERRORLEVEL%==4 goto _19
    if %ERRORLEVEL%==5 goto _20
    if %ERRORLEVEL%==6 goto _2_1
    if %ERRORLEVEL% GTR 7 goto _error

:_16
set /p FINDSERV=".   Enter the service name: "
if '%FINDSERV%' EQU '' set FINDSERV=%windefend%
psservice \\%CompName% query "%FINDSERV%" 2>nul> "%J:"=%\tmp\%CompName%\service.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\service.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _15

:_17
set /p FINDSERV=".   Enter the service name: "
if '%FINDSERV%' EQU '' set FINDSERV=%windefend%
psservice \\%CompName% config   "%FINDSERV%" 2>nul> "%J:"=%\tmp\%CompName%\conf_service.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\conf_service.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _15

:_18
set /p FINDSERV=".   Enter the service name: "
if '%FINDSERV%' EQU '' set FINDSERV=%windefend%
psservice \\%CompName% start "%FINDSERV%" 2>nul> "%J:"=%\tmp\%CompName%\start_service.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\start_service.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _15

:_19
set /p FINDSERV=".   Enter the service name: "
if '%FINDSERV%' EQU '' set FINDSERV=%windefend%
psservice \\%CompName% stop "%FINDSERV%" 2>nul> "%J:"=%\tmp\%CompName%\stop_service.txt"
@echo     [%time:~,8%]
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\stop_service.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _15

:_20
set /p FINDSERV=".   Enter the service name: "
if '%FINDSERV%' EQU '' set FINDSERV=%windefend%
psservice \\%CompName% setconfig "%FINDSERV%"
@echo.
@echo     Press enter
pause 2>nul>nul
goto _15

:_21
set /p SETURL=".   Enter the url: "
if '%SETURL%' EQU '' set SETURL="https://media1.tenor.com/images/f5c22fea838e6eaf4f9659148502d8a5/tenor.gif?itemid=5145428"
rem if '%SETURL%' EQU '' set SETURL="http://mobile-review.com/news/wp-content/uploads/2017/10/badrabbit_1.gif"
psexec \\%CompName% -i -d -e EXPLORER %SETURL%
@echo     [%time:~,8%] URL sent
@echo.
@echo     Press enter
pause 2>nul>nul
goto _3_1

:_22
set N=PSI
@xcopy "%J:"=%\PSI" "%I%" /H /Y /C /R /Q /Z /F 2>nul>nul
goto INST

:_23
psexec \\%CompName% cmd /c powershell -command "Get-ChildItem HKLM:\SYSTEM\ControlSet001\Enum\USBSTOR | Select-Object PSChildname" 2>nul> "%J:"=%\tmp\%CompName%\usb_hist.txt"
timeout 10 >nul
@echo     [%time:~,8%]
@echo     USB:
for /F "delims=   " %%i in (%J:"=%\tmp\%CompName%\usb_hist.txt) do @echo      %%i
@echo.
@echo     Press enter
pause 2>nul>nul
goto _2_1

:INST
schtasks /create /s %CompName% /ru system /sc once /tn inst /tr "C:\TEMP\install.bat C:\TEMP" /ST "23:30:30" 2>nul>nul
schtasks /run /s %CompName% /tn inst 2>nul>nul

:CHECK
timeout 10 >nul
schtasks /query /s %CompName% | find "inst" | find "Выполняется" && goto :CHECK

:CLEAR
schtasks /delete /s %CompName% /tn inst /f 2>nul>nul
psexec \\%CompName% -d cmd /c RD /S /Q "C:\TEMP" 2>nul>nul
@echo     [%time:~,8%] %N% INSTALLED
goto _FIRST_MENU

:_0
@echo.
@echo     ==================================================================
@echo         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
@echo               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% WROOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
@echo                         %%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%
set CompName=
set errorlevel=
chcp 866 >nul
goto :eof

:_error
@echo.
@echo     ==================================================================
@echo     NEPREDVIDENNYE ERROR, SORRY :-(
@echo     ERROR: %errorlevel%
set CompName=
set errorlevel=
chcp 866 >nul
goto :eof
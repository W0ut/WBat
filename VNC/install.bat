@echo off
rem Начинаем новый лог установки
cls

set ThePath="%1"
if %ThePath% EQU "" set ThePath="%CD%"

rem Проверяем не 64-битная ли система
Set DISTR=vnc_64.exe & If "%PROCESSOR_ARCHITECTURE%"=="x86" If Not Defined PROCESSOR_ARCHITEW6432 Set DISTR=vnc_32.exe

rem Проверяем есть ли установленный сервер в данный момент
dir "C:\Program Files\uvnc bvba\UltraVNC" 2>nul>nul
if %errorlevel% EQU 0 (goto DEL_VNC) else (
	echo               [%time:~,8%] Installed versions program not found
	goto INSTALL)

rem При наличии установки проверяем соответствует ли версия нужной
:DEL_VNC
echo               [%time:~,8%] Found installed version of the program
rem Чтобы не было ребутов - останавливаем службу и сносим старые конфиги со всем остальным за компанию
echo               [%time:~,8%] Stop the service UVNC_Service
net stop uvnc_service 2>nul>nul
if %errorlevel% EQU 0 (
	echo               [%time:~,8%] Service UVNC_Service stopped) else (
	echo               [%time:~,8%] Failed to stop service UVNC_Service)
rd /s /q "C:\Program Files\uvnc bvba\UltraVNC" 2>nul>nul
if %errorlevel% EQU 0 (
	echo               [%time:~,8%] Folder installed earlier version UltraVNC cleaned) else (
	echo               [%time:~,8%] Failed to delete the previously installed UltraVNC)

rem Начинаем установку: создаем папку, копируем туда заготовленный конфиг с нужными настройками
:INSTALL
md "C:\Program Files\uvnc bvba\UltraVNC" 2>nul>nul && echo               [%time:~,8%] Create a folder for installation UltraVNC
@xcopy "%ThePath:"=%\UltraVNC.ini" "C:\Program Files\uvnc bvba\UltraVNC" /H /Y /C /R /S /Q /Z /F 2>nul>nul
if %errorlevel% EQU 0 (
	echo               [%time:~,8%] File server settings copied to the folder) else (
	echo               [%time:~,8%] Failed to copy server settings)
rem Запускаем тихую установку
"%ThePath:"=%\%DISTR%" /verysilent /noicons
if %errorlevel% EQU 0 (
	echo               [%time:~,8%] Server UltraVNC installed) else (
	echo               [%time:~,8%] Failed to install server UltraVNC)
rem Удаляем пункты в Главном меню - чтобы пользователям не мешалось
rd /q /s "C:\Documents and Settings\All Users\Главное меню\Программы\UltraVNC" 2>nul>nul
if %errorlevel% EQU 0 (
	echo               [%time:~,8%] Labels removed from the main menu) else (
	echo               [%time:~,8%] Failed to remove shortcuts from the main menu)

@start C:\"Program Files"\"uvnc bvba"\UltraVNC\winvnc.exe -install
echo               [%time:~,8%] Server UltraVNC installed
goto :eof
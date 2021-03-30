@echo off
rem Начинаем новый лог установки
cls
set ThePath="%1"
if %ThePath% EQU "" set ThePath="%CD%"
Set DISTR=psi64.exe
"%ThePath:"=%\%DISTR%" /S
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "Psi_x64" /t REG_SZ /F /D "C:\Program Files\Psi\psi.exe"
goto :eof
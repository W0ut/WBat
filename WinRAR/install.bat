@echo off
rem Начинаем новый лог установки
cls
set ThePath="%1"
if %ThePath% EQU "" set ThePath="%CD%"
Set DISTR=WinRAR.5.50.exe
"%ThePath:"=%\%DISTR%" /S /RI
goto :eof
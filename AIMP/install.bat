@echo off
rem Начинаем новый лог установки
cls
set ThePath="%1"
if %ThePath% EQU "" set ThePath="%CD%"
Set DISTR=AIMP.exe
"%ThePath:"=%\%DISTR%" /S /I
goto :eof
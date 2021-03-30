@echo off
rem Начинаем новый лог установки
cls
set ThePath="%1"
if %ThePath% EQU "" set ThePath="%CD%"
Set DISTR=urbackup.msi
"%ThePath:"=%\%DISTR%" /q /norestart
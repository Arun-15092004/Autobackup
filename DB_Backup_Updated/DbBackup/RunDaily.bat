@echo off
REM ================================
REM Run Daily SQL Server Backup
REM ================================

cd /d %~dp0
powershell.exe -ExecutionPolicy Bypass -File ".\DailyBackup.ps1"

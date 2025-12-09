@echo off
REM ================================
REM Run Weekly SQL Server Backup
REM ================================

cd /d %~dp0
powershell.exe -ExecutionPolicy Bypass -File ".\WeeklyBackup.ps1"

@echo off
REM ================================
REM Run Monthly SQL Server Backup
REM ================================

cd /d %~dp0
powershell.exe -ExecutionPolicy Bypass -File ".\MonthlyBackup.ps1"

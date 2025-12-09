@echo off
REM ================================
REM Run Annual SQL Server Backup
REM ================================

cd /d %~dp0
powershell.exe -ExecutionPolicy Bypass -File ".\AnnualBackup.ps1"

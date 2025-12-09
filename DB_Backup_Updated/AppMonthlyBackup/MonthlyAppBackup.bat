@echo off
REM =========================================
REM Run Monthly Application Backup (First Sunday 11:30 PM)
REM =========================================

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0MonthlyAppBackup.ps1"

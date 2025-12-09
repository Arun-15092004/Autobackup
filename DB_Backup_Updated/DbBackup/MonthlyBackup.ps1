# ================================
# SQL Server Database Backup Script
# ================================

$ServerName = "ARUN\SQLEXPRESS"
$DatabaseName = "Testdb"
$BackupFolder = "D:\sqlbackup\Monthly_backup"

if (!(Test-Path -Path $BackupFolder)) {
    New-Item -ItemType Directory -Path $BackupFolder | Out-Null
}

$Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$BackupFile = "$BackupFolder\$DatabaseName`_$Timestamp.bak"

Invoke-Sqlcmd -ServerInstance $ServerName -Query "BACKUP DATABASE [$DatabaseName] TO DISK='$BackupFile' WITH INIT"

Write-Output "✅ Backup created: $BackupFile"

# Retention Policy
$Limit = (Get-Date).AddDays(-365)
Get-ChildItem -Path $BackupFolder -Filter "*.bak" | Where-Object { $_.LastWriteTime -lt $Limit } | Remove-Item -Force

Write-Output "🗑️ Old backups (older than) deleted."
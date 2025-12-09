# ================================
# Application Backup Script (Monthly, No Compression)
# ================================

# Application details
$AppSource    = "D:\study file\DB_App_Final"    # ✅ Path of your application folder
$BackupFolder = "D:\sqlbackup\App_Backup"       # Backup storage folder

# Create backup folder if it does not exist
if (!(Test-Path -Path $BackupFolder)) {
    New-Item -ItemType Directory -Path $BackupFolder | Out-Null
}

# ================================
# Backup folder name with timestamp
# ================================
$Timestamp    = Get-Date -Format "yyyyMMdd_HHmmss"
$BackupTarget = Join-Path $BackupFolder "Application_Monthly_$Timestamp"

try {
    # Copy entire application folder (recursively, without compression)
    Copy-Item -Path $AppSource -Destination $BackupTarget -Recurse -Force

    Write-Output "✅ Files and folders copied successfully. Backup created at: $BackupTarget"
}
catch {
    Write-Output "❌ Application backup failed. Error: $_"
}

# ================================
# Retention Policy - Keep 12 Months
# ================================
$MonthsToKeep = 12
$Limit = (Get-Date).AddMonths(-$MonthsToKeep)

Get-ChildItem -Path $BackupFolder -Directory |
    Where-Object { $_.LastWriteTime -lt $Limit } |
    Remove-Item -Recurse -Force

Write-Output "🗑️ Old monthly backups (older than $MonthsToKeep months) deleted."

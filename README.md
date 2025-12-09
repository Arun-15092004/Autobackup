“DB & App Backup Scheduler with Retention Control”

1. Automated Backup System

The project automates backup creation for both SQL databases and application files.
It ensures regular protection without requiring manual effort.

2. Multi-Schedule Backup Levels

Backups run daily, weekly, monthly, and annually based on predefined timings.
Each schedule targets different retention and recovery needs.

3. Application Monthly Backup

The app folder is backed up on the first Sunday at 11:30 PM every month.
The retained history ensures traceability for up to 12 months.

4. Daily Database Backup

A SQL database backup runs every night at 11:30 PM automatically.
Daily backups are kept for 7 days before deletion.

5. Weekly Database Backup

Weekly backups occur every Saturday night at 11:30 PM.
These backups are retained for 4 weeks to ensure weekly restore points.

6. Monthly Database Backup

A monthly DB backup is taken on the first Sunday at 11:30 PM.
These backups are stored for 12 months for long-term history.

7. Annual Database Backup

The system performs an annual backup on the first Sunday of the year.
These copies are retained for 8 years for audit and disaster recovery.

8. Retention Policy Management

Old backups are automatically deleted after their retention period expires.
This prevents storage overload and keeps only required history.

9. Batch & PowerShell Automation

Batch (.bat) files trigger PowerShell (.ps1) scripts for backup logic.
These scripts handle file creation, movement, logging, and cleanup.

10. Manual & Scheduled Execution

Backups can run manually or via Windows Task Scheduler.
Users have full flexibility for testing, troubleshooting, or automation.

✅ Technologies Used:
1.Windows Batch Scripting (.bat)
2. PowerShell Scripting (.ps1)
3. SQL Server (Database Backup Target)
4.Windows Task Scheduler

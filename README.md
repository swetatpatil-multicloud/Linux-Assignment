# Linux-Assignment

## OUTPUT Screenshots:

### Screenshot number 1: Log disk usage to /var/log/devops/df_usage.log
 <img width="1434" height="493" alt="image" src="https://github.com/user-attachments/assets/e987be10-e65b-404d-92ac-bc92b94c090f" />

### Screenshot number 2: Log top CPU processes:
 <img width="1409" height="445" alt="image" src="https://github.com/user-attachments/assets/c6754860-c432-44cb-9dc8-e9d281cdbc31" />

### Screenshot number 3: Log backup verification to /backups/logs/apache_backup_YYYY-MM-DD.log 

### CPU Utilization:
 <img width="1424" height="710" alt="image" src="https://github.com/user-attachments/assets/d068986b-53f2-485f-b0e4-90bbb6bf26c5" />

### Memory:
<img width="1410" height="254" alt="image" src="https://github.com/user-attachments/assets/a25d530d-9517-41b8-a160-322847e8ae62" />

### Disk usage tracking with df and du
•	Current filesystem usage:
 <img width="1238" height="694" alt="image" src="https://github.com/user-attachments/assets/bf1a935b-7193-4866-b39e-9419522498c1" />

### Largest directories under /var/www/html (top 10):
 <img width="1421" height="111" alt="image" src="https://github.com/user-attachments/assets/2ba9384d-d305-42ac-8080-447fd412f900" />

### Home directories usage:
 <img width="1425" height="53" alt="image" src="https://github.com/user-attachments/assets/9f6c4620-73d4-42ec-bd7d-bc6fb1926532" />

### Snapshot of top CPU consumers:
 <img width="704" height="792" alt="image" src="https://github.com/user-attachments/assets/b87b1a29-6580-4e0a-802d-8ff0fa085af1" />

### Snapshot of top memory consumers: 
<img width="1071" height="552" alt="image" src="https://github.com/user-attachments/assets/44085161-661d-4194-99f8-0b61248a6928" />

### VERIFICATION:
 <img width="1128" height="445" alt="image" src="https://github.com/user-attachments/assets/ef4ff078-273b-4e4e-9ea0-7483dda751d3" />

### Backups run:
<img width="678" height="871" alt="image" src="https://github.com/user-attachments/assets/f3c5c641-97df-457e-82b3-8fd4452a0e68" />

### Setting Weekly backups every Tuesday at 12:00 AM:
 <img width="1240" height="351" alt="image" src="https://github.com/user-attachments/assets/a9a955f3-cc73-4ce1-8bc5-add1e93cf12a" />

### Test run manually for both Apache & Neginx:
<img width="892" height="744" alt="image" src="https://github.com/user-attachments/assets/0231399c-fa28-46a8-b35a-a35772b9305b" />

### List contents from Archive:
<img width="869" height="445" alt="image" src="https://github.com/user-attachments/assets/a957564d-c159-4faa-8980-90352ed62231" />

# DevOps Environment Setup:

### Task 1: System Monitoring Setup
1. Install monitoring tools (htop, nmon).
2. Create a monitoring script to capture snapshots of disk usage and top processes.
3. Schedule a cron job to run the monitoring script daily at 07:00.

### Task 2: User Management and Access Control
1. Create users Sarah and Mike with secure initial passwords.
2. Create isolated workspaces for each user.
3. Set ownership and restrictive permissions on home and workspace directories.
4. Configure password expiration policy (30 days, warning after 7 days).
5. Enforce password complexity rules (minimum length, digits, uppercase, lowercase, special characters).
6. Force password change on first login.

### Task 3: Backup Configuration
1. Create a reusable backup script for Apache and Nginx servers.
2. Configure the script to generate compressed tarballs with date-stamped filenames.
3. Add integrity checks to verify gzip compression.
4. Schedule cron jobs to run backups every Tuesday at 12:00 AM.
5. Verify backup files and logs after manual and scheduled runs.

### Task 4: Backup Pruning
1. Create a script to delete backup archives older than 60 days.
2. Schedule a cron job to run the prune script weekly.

### Task 5: GitHub Repository Setup
1. Create a repository structure with `scripts/`, `policy/`, and `docs/` directories.
2. Copy backup and monitoring scripts into the `scripts/` directory.
3. Copy sample policy files into the `policy/` directory.
4. Initialize Git in the project directory.
5. Commit all files with a descriptive message.
6. Set the default branch to `main`.
7. Add the remote GitHub repository URL.
8. Push the project to GitHub.

### Verification Checklist
- Monitoring logs are generated in `/var/log/devops/`.
- User permissions and password policies are enforced.
- Backup archives are created in `/backups/`.
- Backup logs are stored in `/backups/logs/`.
- Cron jobs are scheduled and verified.
- GitHub repository contains scripts, policies, and documentation.


 


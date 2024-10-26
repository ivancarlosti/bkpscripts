# Backup Scripts

<a target="_blank" href="https://github.com/ivancarlosti/bkponrclone"><img src="https://img.shields.io/github/stars/ivancarlosti/bkponrclone?style=flat" /></a>
<a target="_blank" href="https://github.com/ivancarlosti/bkponrclone"><img src="https://img.shields.io/github/last-commit/ivancarlosti/bkponrclone" /></a>
[![GitHub Sponsors](https://img.shields.io/github/sponsors/ivancarlosti?label=GitHub%20Sponsors)](https://github.com/sponsors/ivancarlosti)

Backup Scripts gives ideas do generate backup of webservers and databases for backup purposes with option to send it to BackBlaze buckets configured on Rclone, also check BackBlaze repositories for outdated buckets and send email messages when find outdated buckets to you through Amazon SES. You can change the script to fit it for other backup storage services and messaging.

## Instructions

* Setup `rclone.sh` file to run backup of webserver and MariaDB/MySQL or Postgres database
* Setup `checkbackup.sh` file to check outdated buckets
* Setup `bkppostgres.sh` file to backup entire Postgres database on a Docker
* Run `chmod +x scriptfile.sh` to make the script executable
* Run `crontab -e` to add execution line to run periodically
  * Suggestion to run script `/home/username/scriptfile.sh` everyday at 02:00:
```
0 2 * * * cd /home/username; ./scriptfile.sh  >/dev/null 2>&1
```
 
#### Set password DB on file if needed to setup MariaDB/MySQL backup

* Write and edit file `.dbpassword.cnf`
* Setup permission running `chmod 0600 .dbpassword.cnf`

#### Check the articles below for additional information (Google Translator may be required)

* [Setting up a script to notify by email that a repository in Rclone is without a recent backup](https://suporte.ivancarlos.com.br/hc/pt-br/articles/25861271868301)
* [Configuring Rclone to send backup to its destination](https://suporte.ivancarlos.com.br/hc/pt-br/articles/25731464664461)

## Requirements

* Linux Server
* MariaDB/MySQL or Postgres database if want backup of it
* Rclone properly configured if want offsite backup
* BackBlaze bucket if want offsite backup on BackBlaze

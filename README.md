# Backup Scripts
Backup Scripts gives ideas do generate backup of webservers and databases for backup purposes with option to send it to BackBlaze buckets configured on Rclone, also check BackBlaze repositories for outdated buckets and send email messages when find outdated buckets to you through Amazon SES. You can change the script to fit it for other backup storage services and messaging.

[![Stars](https://img.shields.io/github/stars/ivancarlosti/bkpscripts?label=⭐%20Stars&color=gold&style=flat)](https://github.com/ivancarlosti/bkpscripts/stargazers)
[![Watchers](https://img.shields.io/github/watchers/ivancarlosti/bkpscripts?label=Watchers&style=flat&color=red)](https://github.com/sponsors/ivancarlosti)
[![Forks](https://img.shields.io/github/forks/ivancarlosti/bkpscripts?label=Forks&style=flat&color=ff69b4)](https://github.com/sponsors/ivancarlosti)
[![GitHub last commit](https://img.shields.io/github/last-commit/ivancarlosti/bkpscripts?label=Last%20Commit)](https://github.com/ivancarlosti/bkpscripts/commits)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/ivancarlosti/bkpscripts?label=Activity)](https://github.com/ivancarlosti/bkpscripts/pulse)  
[![GitHub Issues](https://img.shields.io/github/issues/ivancarlosti/bkpscripts?label=Issues&color=orange)](https://github.com/ivancarlosti/bkpscripts/issues)
[![License](https://img.shields.io/github/license/ivancarlosti/bkpscripts?label=License)](LICENSE)
[![Security](https://img.shields.io/badge/Security-View%20Here-purple)](https://github.com/ivancarlosti/bkpscripts/security)
[![Code of Conduct](https://img.shields.io/badge/Code%20of%20Conduct-1.4-4baaaa)](https://github.com/ivancarlosti/bkpscripts/tree/main?tab=coc-ov-file)

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

---

## 🧑‍💻 Consulting and technical support
* For personal support and queries, please submit a new issue to have it addressed.
* For commercial related questions, please contact me directly for consulting costs. 

## 🩷 Project support
| If you found this project helpful, consider |
| :---: |
[**buying me a coffee**][buymeacoffee], [**donate by paypal**][paypal], [**sponsor this project**][sponsor] or just [**leave a star**](../..)⭐
|Thanks for your support, it is much appreciated!|

## 🌐 Connect with me
[![Instagram](https://img.shields.io/badge/Instagram-@ivancarlos-E4405F)](https://instagram.com/ivancarlos)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-@ivancarlos-0077B5)](https://www.linkedin.com/in/ivancarlos)
[![Threads](https://img.shields.io/badge/Threads-@ivancarlos-808080)](https://threads.net/@ivancarlos)
[![X](https://img.shields.io/badge/X-@ivancarlos-000000)](https://x.com/ivancarlos)  
[![Discord](https://img.shields.io/badge/Discord-@ivancarlos.me-5865F2)](https://discord.com/users/ivancarlos.me)
[![Signal](https://img.shields.io/badge/Signal-@ivancarlos.01-2592E9)](https://icc.gg/-signal)
[![Telegram](https://img.shields.io/badge/Telegram-@ivancarlos-26A5E4)](https://t.me/ivancarlos)  
[![Website](https://img.shields.io/badge/Website-ivancarlos.me-FF6B6B)](https://ivancarlos.me)
[![GitHub Sponsors](https://img.shields.io/github/sponsors/ivancarlosti?label=GitHub%20Sponsors&color=ffc0cb)][sponsor]

## 📃 License
[MIT](LICENSE) © [Ivan Carlos][ivancarlos]

[cc]: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-code-of-conduct-to-your-project
[contributing]: https://docs.github.com/en/articles/setting-guidelines-for-repository-contributors
[security]: https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository
[support]: https://docs.github.com/en/articles/adding-support-resources-to-your-project
[it]: https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
[prt]: https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/creating-a-pull-request-template-for-your-repository
[funding]: https://docs.github.com/en/articles/displaying-a-sponsor-button-in-your-repository
[ivancarlos]: https://ivancarlos.me
[buymeacoffee]: https://www.buymeacoffee.com/ivancarlos
[paypal]: https://icc.gg/donate
[sponsor]: https://github.com/sponsors/ivancarlosti

# Backup Scripts
Backup Scripts gives ideas do generate backup of webservers and databases for backup purposes with option to send it to BackBlaze buckets configured on Rclone, also check BackBlaze repositories for outdated buckets and send email messages when find outdated buckets to you through Amazon SES. You can change the script to fit it for other backup storage services and messaging.

<!-- buttons -->
[![Stars](https://img.shields.io/github/stars/ivancarlosti/awssesconverter?label=⭐%20Stars&color=gold&style=flat)](https://github.com/ivancarlosti/awssesconverter/stargazers)
[![Watchers](https://img.shields.io/github/watchers/ivancarlosti/awssesconverter?label=Watchers&style=flat&color=red)](https://github.com/sponsors/ivancarlosti)
[![Forks](https://img.shields.io/github/forks/ivancarlosti/awssesconverter?label=Forks&style=flat&color=ff69b4)](https://github.com/sponsors/ivancarlosti)
[![Downloads](https://img.shields.io/github/downloads/ivancarlosti/awssesconverter/total?label=Downloads&color=success)](https://github.com/ivancarlosti/awssesconverter/releases)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/ivancarlosti/awssesconverter?label=Activity)](https://github.com/ivancarlosti/awssesconverter/pulse)
[![GitHub Issues](https://img.shields.io/github/issues/ivancarlosti/awssesconverter?label=Issues&color=orange)](https://github.com/ivancarlosti/awssesconverter/issues)
[![License](https://img.shields.io/github/license/ivancarlosti/awssesconverter?label=License)](LICENSE)  
[![GitHub last commit](https://img.shields.io/github/last-commit/ivancarlosti/awssesconverter?label=Last%20Commit)](https://github.com/ivancarlosti/awssesconverter/commits)
[![Security](https://img.shields.io/badge/Security-View%20Here-purple)](https://github.com/ivancarlosti/awssesconverter/security)
[![Code of Conduct](https://img.shields.io/badge/Code%20of%20Conduct-2.1-4baaaa)](https://github.com/ivancarlosti/awssesconverter?tab=coc-ov-file)
[![GitHub Sponsors](https://img.shields.io/github/sponsors/ivancarlosti?label=GitHub%20Sponsors&color=ffc0cb)][sponsor]
[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00)][buymeacoffee]
<!-- endbuttons -->

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

<!-- footer -->
---

## 🧑‍💻 Consulting and technical support
* For personal support and queries, please submit a new issue to have it addressed.
* For commercial related questions, please [**contact me**][ivancarlos] for consulting costs. 

| 🩷 Project support |
| :---: |
If you found this project helpful, consider [**buying me a coffee**][buymeacoffee]
|Thanks for your support, it is much appreciated!|

[cc]: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-code-of-conduct-to-your-project
[contributing]: https://docs.github.com/en/articles/setting-guidelines-for-repository-contributors
[security]: https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository
[support]: https://docs.github.com/en/articles/adding-support-resources-to-your-project
[it]: https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
[prt]: https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/creating-a-pull-request-template-for-your-repository
[funding]: https://docs.github.com/en/articles/displaying-a-sponsor-button-in-your-repository
[ivancarlos]: https://ivancarlos.me
[buymeacoffee]: https://buymeacoffee.com/ivancarlos
[paypal]: https://icc.gg/donate
[sponsor]: https://github.com/sponsors/ivancarlosti

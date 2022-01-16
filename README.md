# [AWVS14 Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-14.6.211220100-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org) 

# [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes
- Version 14 build 14.6.211220100 for Windows, Linux and macOS – 20th December 2021

### New Vulnerability Checks

- [Apache Log4j RCE](https://www.acunetix.com/blog/web-security-zone/critical-alert-log4shell-cve-2021-44228-in-log4j-possibly-the-biggest-impact-vulnerability-ever/) vulnerabilty check updated to detect blind (delayed) instances of the vulnerability
- Change the user name and password

### Use

```bash
docker run -it -d \
--name awvs \
-p 3443:3443 \
--restart=always \
ghcr.io/xrsec/awvs:latest
```

#### Edit HOSTS

```bash
sudo vi /etc/hosts
192.168.0.1	awvs.lan
```

#### RootCA 「must」

Downlaod && Install [`RootCA.cer`](https://cdn.jsdelivr.net/gh/XRSec/AWVS14-Update@main/.github/resources/ca.cer)

#### Visit Web

```ini
URL: https://awvs.lan:3443/#/login
UserName: awvs@awvs.lan
PassWord: Awvs@awvs.lan
```

<hr>

## Latest 14.6.211215172

### New Vulnerability Checks

- [Apache Log4j RCE](https://www.acunetix.com/blog/web-security-zone/critical-alert-log4shell-cve-2021-44228-in-log4j-possibly-the-biggest-impact-vulnerability-ever/) vulnerabilty check updated to detect the vulnerability in web server exceptions
- [Apache Log4j RCE](https://www.acunetix.com/blog/web-security-zone/critical-alert-log4shell-cve-2021-44228-in-log4j-possibly-the-biggest-impact-vulnerability-ever/) vulnerabilty check updated to execute on various HTTP Headers

### Updates

- Updated the scanner to test custom headers used by the web application

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

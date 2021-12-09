# [AWVS14 Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-14.6.211207099-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org) 

# [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes
- `Version 14 build 14.6.211207099` for Windows, Linux and macOS – 7th December 2021

### New Features

- Scanner supports detecting HTTP/2 vulnerabilities

### New Vulnerability Checks

- New check for [Reverse proxy misrouting through HTTP/2 pseudo-headers (SSRF)](https://speakerdeck.com/greendog/2-and-a-bit-of-magic)
- New check for [HTTP/2 pseudo-header server-side request forgery](https://speakerdeck.com/greendog/2-and-a-bit-of-magic)
- New check for [Web Cache Poisoning DoS through HTTP/2 headers](https://speakerdeck.com/greendog/2-and-a-bit-of-magic)
- New check for HTTP/2 Web Cache Poisoning
- New check for [Ghost CMS Theme Preview XSS](https://github.com/TryGhost/Ghost/security/advisories/GHSA-9fgx-q25h-jxrg) ([CVE-2021-29484](https://nvd.nist.gov/vuln/detail/CVE-2021-29484))
- New check for [GitLab ExifTool RCE](https://hackerone.com/reports/1154542) ([CVE-2021-22205](https://nvd.nist.gov/vuln/detail/CVE-2021-22205))
- New check for [Limited Remote File Read/Include in Jira Software Server](https://jira.atlassian.com/browse/JRASERVER-72695) ([CVE-2021-26086](https://nvd.nist.gov/vuln/detail/CVE-2021-26086))
- New check for [Sitecore XP Deserialization RCE](https://support.sitecore.com/kb?id=kb_article_view&sysparm_article=KB1000776) ([CVE-2021-42237](https://nvd.nist.gov/vuln/detail/CVE-2021-42237))

### Updates

- Improved handling of Laravel CSRF tokens
- Added possibility to restrict scanning a Target using the Main Installation’s scanning engine
- Added ability to configure blocking of requests to Ad services
- Multiple UI updates
- Multiple DeepScan updates
- Multiple updates to the PHP AcuSensor

### Fixes

- Fixed: SQLi false negative caused when AcuSensor is installed
- Fixed: Incremental scans not starting when scheduled via Jenkins plugin
- Fixed: 2 issues in .NET sensor injector CLI
- Fixed: Node.js sensor not working on https sites
- Fixed: Not all paths are importing from specific Burp state file
- Fixed: Scanner crashes when parsing specific GraphQL and Swagger 2 files
- Fixed: Specific excluded paths can cause the scanner to hang
- Fixed: multiple scanner hangs
- Fixed: Race condition between LSR and BLR
- Fixed: Imported urls ignored when site redirects from http to https
- Fixed: Incorrect permissions for some Acunetix files / folders on Linux / Mac

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
UserName: awvs@awvs.com
PassWord: Awvs@awvs.com
```

## Latest 14.5.211115146

### New Features

- New OWASP Top 10 2021 compliance report
- JAVA AcuSensor now supports JDK 11

### New Vulnerability Checks

- New check for GitLab ExifTool RCE ([CVE-2021-22205](https://nvd.nist.gov/vuln/detail/CVE-2021-22205))
- New check for [Sitecore XP Deserialization RCE](https://support.sitecore.com/kb?id=kb_article_view&sysparm_article=KB1000776) ([CVE-2021-42237](https://nvd.nist.gov/vuln/detail/CVE-2021-42237))

### Fixes

- Fixed issue causing hang in scanner
- Fixed issue causing some vulnerabilities not to be detected when AcuSensor is enabled and not installed on the web application

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
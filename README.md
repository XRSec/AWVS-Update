# [AWVS14 Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-14.5.211026108-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org/index.php/archives/140/) 

## [InfO](https://www.acunetix.com/support/build-history/)

> Version 14 build 14.5.211115146 for Windows, Linux and macOS – 16th November 2021

### New Features

- New OWASP Top 10 2021 compliance report
- JAVA AcuSensor now supports JDK 11

### New Vulnerability Checks

- New check for GitLab ExifTool RCE ([CVE-2021-22205](https://nvd.nist.gov/vuln/detail/CVE-2021-22205))
- New check for [Sitecore XP Deserialization RCE](https://support.sitecore.com/kb?id=kb_article_view&sysparm_article=KB1000776) ([CVE-2021-42237](https://nvd.nist.gov/vuln/detail/CVE-2021-42237))

### Fixes

- Fixed issue causing hang in scanner
- Fixed issue causing some vulnerabilities not to be detected when AcuSensor is enabled and not installed on the web application

### Use

```bash
docker run -it -d \
--name awvs \
-p 3443:3443 \
--restart=always \
xrsec/awvs:latest
```

```ini
https://ip:3443
awvs@awvs.com
Awvs@awvs.com
```

## Latest 14.5.211109105

### New Vulnerability Checks

- New check for Keycloak request_uri SSRF ([CVE-2020-10770](https://nvd.nist.gov/vuln/detail/CVE-2020-10770))
- New check for Apache HTTP Server Insecure Path Normalization ([CVE-2021-41773](https://nvd.nist.gov/vuln/detail/CVE-2021-41773) and [CVE-2021-42013](https://nvd.nist.gov/vuln/detail/CVE-2021-42013))
- New check for Apache mod_proxy SSRF ([CVE-2021-40438](https://nvd.nist.gov/vuln/detail/CVE-2021-40438))

### Fixes

- Fixed issue in .NET AcuSensor CLI parameter used to list the web sites in IIS
- Fixed issue in Clickjacking: CSP frame-ancestors missing vulnerability check
- Fixed false positive in Сockpit CMS reset password NoSQLi
- No more printing to md5

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

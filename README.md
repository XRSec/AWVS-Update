# [AWVS14 Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-14.5.211026108-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml)

## [InfO](https://www.acunetix.com/support/build-history/)

> Version 14 build 14.5.211109105 for Windows, Linux and macOS – 9th November 2021

### New Vulnerability Checks

- New check for Keycloak request_uri SSRF ([CVE-2020-10770](https://nvd.nist.gov/vuln/detail/CVE-2020-10770))
- New check for Apache HTTP Server Insecure Path Normalization ([CVE-2021-41773](https://nvd.nist.gov/vuln/detail/CVE-2021-41773) and [CVE-2021-42013](https://nvd.nist.gov/vuln/detail/CVE-2021-42013))
- New check for Apache mod_proxy SSRF ([CVE-2021-40438](https://nvd.nist.gov/vuln/detail/CVE-2021-40438))

### Fixes

- Fixed issue in .NET AcuSensor CLI parameter used to list the web sites in IIS
- Fixed issue in Clickjacking: CSP frame-ancestors missing vulnerability check
- Fixed false positive in Сockpit CMS reset password NoSQLi
- No more printing to md5

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

## Latest 14.5.211026108
### Updates

- Removed message to “Press any key to continue” when installing .NET AcuSensor from CLI. This was hindering the automatic installation of the .NET sensor

### Fixes

- Fixed issue causing scans to fail when site redirets from http to https
- Fixed issue causing incremental scans initiated from Jenkins plugin not to start

> Version 14 build 14.5.211021117 for Windows, Linux and macOS – 11th October 2021

### Fixes

- Fixed crash when processing swagger2 file with non-existent references

> Version 14 build 14.5.211008143 for Windows, Linux and macOS – 11th October 2021

### New Features

- Added support for URL optional fields
- Added support for [Brotli encoding](https://github.com/google/brotli)
- JAVA AcuSensor can now be used on Tomcat 10.0.x
- Added support for [Restify framework](https://loopback.io/getting-started.html) in Node.js Sensor
- Added support for [LoopBack framework](https://loopback.io/) in Node.js Sensor
- Added support for [Sequelize ORM](https://sequelize.org/) in Node.js Sensor
- Added support for [Router Package](https://www.npmjs.com/package/router) in Node.js Sensor
- Added support for [Director Router](https://www.npmjs.com/package/director) in Node.js Sensor

### New Vulnerability Checks

- New check for [Apache HTTP Server Source Code Disclosure](https://zeronights.ru/wp-content/uploads/2021/09/013_dmitriev-maksim.pdf)
- New check for [ManageEngine ADSelfService Plus Authentication Bypass](https://www.manageengine.com/products/self-service-password/kb/how-to-fix-authentication-bypass-vulnerability-in-REST-API.html) ([CVE-2021-40539](https://nvd.nist.gov/vuln/detail/CVE-2021-40539))
- New check for [Oracle Business Intelligence ReportTemplateService XXE](https://www.oracle.com/security-alerts/cpujul2021.html) ([CVE-2021-2400](https://nvd.nist.gov/vuln/detail/CVE-2021-2400))
- New check for [Jira Unauthorized User Enumeration](https://jira.atlassian.com/browse/JRASERVER-71560) ([CVE-2020-14181](https://nvd.nist.gov/vuln/detail/CVE-2020-14181))
- New check for [Jira Unauthorized User Enumeration via UserPickerBrowser](https://confluence.atlassian.com/adminjiraserver/control-anonymous-user-access-975034642.html)
- New check for [Jira Projects accessible anonymously](https://confluence.atlassian.com/adminjiraserver/control-anonymous-user-access-975034642.html)
- New check for [Payara Micro File Read](https://www.syss.de/fileadmin/dokumente/Publikationen/Advisories/SYSS-2021-054.txt) ([CVE-2021-41381](https://nvd.nist.gov/vuln/detail/CVE-2021-41381))

### Updates

- Export to AWS WAF is now available in all pages which allow WAF Export
- Updated Pre-request scripts, making it easier to update session header value
- Updated the detection of WAFs to support new WAFs
- Increased the detection of development files
- Improved the JavaScript Library Audit checks

### Fixes

- Fixed issue in Paros import
- Fixed issue in scanner causing False Negatives when processing specific pages
- Fixed issue in AWS WAF Export
- Fixed issue in PHP Sensor not being detected when used in a large site with many files
- Fixed issue causing pre-request scripts not to be loaded by scanner
- Fixed 3 issues in Postman imports
- Fixed False Negative in Django Debug Mode vulnerability check
- Fixed issue causing high response times in UI caused by large quantity of Targets configured
- Fixed false positive in “User credentials are sent in clear text” check

### Updates by Docker

- Automatic deployment using Github Action
- Support Chinese export report to PDF

## Use

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

## MD5

```bash
➜  AWVS14-Docker git:(main) find ./ -type f -print0 | xargs -0 MD5

MD5 (  Dockerfile  ) = e549463e7c67ca92fdd9554a67fb385e
MD5 (  acunetix/.hosts  ) = f628f786e8ccac389ee4743ed563fd0f
MD5 (  acunetix/awvs_listen.zip  ) = cf4ca0a243738211ab2bab9a3f6cadc5
MD5 (  acunetix/xaa  ) = 88efca25fb55912d424c087847e7677e
MD5 (  acunetix/xab  ) = ae6e057d617b5db7e28326a3f000fe93
MD5 (  acunetix/xae  ) = 494b6b95bb4895e9d5c5fd7214d594a5
MD5 (  acunetix/xad  ) = 86afe6e36808ce84466a33ed5b050a13
MD5 (  acunetix/xac  ) = 992323b107ae7f7e9e36017b8294b799
MD5 (  awvs.sh  ) = 0bb9878312f7e4f8723655757a91e3e8

➜  AWVS14-Docker git:(main) 
```

> 上次更新开始，已不再提供破解补丁
>
> [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org/index.php/archives/140/) 
>
> Since the last update, crack patches are no longer provided

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

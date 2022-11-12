# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-15.1-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## 15.1

### New features

- New navigation menu for a better user experience.
- Notification updates are shown for the last 30 days

### New vulnerability checks

- New check for [Swagger UI DOM XSS vulnerability](https://www.vidocsecurity.com/blog/hacking-swagger-ui-from-xss-to-account-takeovers/).
- New test for Fortinet Authentication bypass on the administrative interface ( [CVE-2022-40684](https://www.fortiguard.com/psirt/FG-IR-22-377)).
- New test for [Insecure usage of Version 1 UUID/GUID](https://www.intruder.io/research/in-guid-we-trust).
- New test for [Text4shell: Apache Commons Text RCE via insecure interpolation](https://www.openwall.com/lists/oss-security/2022/10/13/4)( [CVE-2022-42889](https://www.openwall.com/lists/oss-security/2022/10/13/4)).
- New test for OpenSSL X.509 Email Address Buffer Overflows ( [CVE-2022-3786](https://www.openssl.org/blog/blog/2022/11/01/email-address-overflows/)).
- Updated test for Open Monitoring Interfaces.
- Updated the software composition analysis database.
- Updated the WordPress plugin vulnerabilities.

### Updates

- Updated the embedded Chromium browser to v107.0.5304.87/88.
- Updated how scans reaching max scan time are displayed in UI.
- Updated Issue Tracker UI to accept internal URLs.
- Improved Log4J checks to reduce false positives.

### Fixes

- Fixed the issue causing the IAST bridge to fail to send responses to the sensor when large packets are received from the sensor.
- Added loopback routes that returned ‘undefined’ as an HTTP method.
- Added the keep connection alive message between AcuSensor and the web application scanner to keep the connection alive.

## Use

```bash
docker run -it -d \
--name awvs \
-p 3443:3443 \
--restart=always \
xrsec/awvs
# xrsec/awvs:v15
# xrsec/awvs:v14
```

### Edit HOSTS

```bash
sudo vi /etc/hosts
192.168.0.1 awvs.lan
```

### RootCA 「must」

Downlaod && Install [`RootCA.cer`](https://cdn.jsdelivr.net/gh/XRSec/AWVS-Update@main/.github/resources/ca.cer)

### Visit Web

```ini
URL: https://awvs.lan:3443/#/login
UserName: awvs@awvs.lan
PassWord: Awvs@awvs.lan
```

<hr>

## Previous 15.0.221007170

Note: There will be no new updates of the MacOS on premise installations. MacOS users can switch to Acunetix Premium Online, or use Acunetix On Premise in a virtual environment or on Docker.

### New Features

- Acunetix can now be installed on [Redhat Enterprise Linux (RHEL) 9](https://developers.redhat.com/articles/2022/05/18/whats-new-red-hat-enterprise-linux-9)

### New Vulnerability checks

- Added check for [Permissions-Policy header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Feature-Policy)
- Added check for unrestricted access to Karma monitoring interface
- Added check for Go web application binary disclosure

### Updates

- SCA: Improved the detection of components used by JAVA web application
- Updated to Chromium v106.0.5249.61
- Updated PHP AcuSensor to better support web applications using the Slim Framework
- Improved support for HTTP calls from [Axios](https://axios-http.com/)
- Updated CWE Top 25 Most Dangerous Software Weaknesses to 2022 list of weaknesses
- Scan results and scan reports will include the Acunetix version used to conduct the scan
- Updated PHP sensor to report MongoDB injection
- Updated PHP sensor to report Server-side Template Injection (SSTI)
- Increased the detection of default GraphQL Introspection URLs
- Implemented heartbeat for connections between scanner and AcuSensor bridge
- Multiple DeepScan updates
- Improved the auditing of JavaScript Libraries

### Fixes

- Fixed issue which might cause Blind SSRF in the Issue Tracker and Proxy configuration
- Fixed 3 authorization problems
- Fixed memory exhaustion bug in Heuristic Links Verifier
- Fixed: Malware was being reported when invalid / unknown malware was reported by Windows Defender
- Fixed some crashes in the scanner
- Updated Network scans to not abort if initial ICMP ping fails
- Fixed error when sending vulnerabilities to Jira Issue Tracker
- Fixed UI error when filtering vulnerabilities by time

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
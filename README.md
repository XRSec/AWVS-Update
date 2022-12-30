# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-15.2-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## 15.2

## New security checks

- Updated the WordPress plugin vulnerabilities.
- Added the AjaxPro.NET Professional Deserialization RCE ( [CVE-2021-23758](https://nvd.nist.gov/vuln/detail/CVE-2021-23758)).
- Improved the out-of-band detection.

## Improvements

- Added ability to send HTTP requests to pre-request scripts.
- Various DeepScan improvements, generally improving the processing of JavaScript-rich web applications.
- Updated the embedded Chromium browser to v108.0.5359.71.
- Implemented the scan id to limit the caching, such as file list and libraries, to a scan.
- Improved the performance of alert transmission for AcuSensor.

## Fixes

- Fixed the MongoDB injection and removed JSON parsing from the feature extraction library to avoid scan crashes.
- Fixed the issue that sent bogus report because of inconsistent last scan id.
- Improved the Pre-request script to send an HTTP job.
- Fixed the formatting issue for vulnerabilities exported to GitHub Issues.
- Fixed the unhandled exception that the IAST Bridge throws.
- Fixed the business logic recorder issue that failed to replay the logic sequence recorder.
- Fixed the issue that the custom scripts folder was not created during the installation.
- Fixed the issue that failed to show the Chinese on some headings when switched to Chinese.
- Fixed the manual intervention required information box that began to appear in the notification bar instead of being displayed as a dialog box.
- Added cURL as a backup if NSLookup is not present.
- Fixed the Jira integration that failed to create the epic issues.
- Fixed the issue that long scan names overlap with the AcuSensor icon.
- Fixed the issue that the authorization bearer was not used throughout the scan.

## Use

```bash
docker run -it -d \
--name awvs \
-p 3443:3443 \
--restart=always \
xrsec/awvs
# example xrsec/awvs:{{tags}} # https://hub.docker.com/r/xrsec/awvs/tags
# xrsec/awvs:v15.1
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

## Previous 15.1

## New features

- New navigation menu for a better user experience.
- Notification updates are shown for the last 30 days

## New vulnerability checks

- New check for [Swagger UI DOM XSS vulnerability](https://www.vidocsecurity.com/blog/hacking-swagger-ui-from-xss-to-account-takeovers/).
- New test for Fortinet Authentication bypass on the administrative interface ( [CVE-2022-40684](https://www.fortiguard.com/psirt/FG-IR-22-377)).
- New test for [Insecure usage of Version 1 UUID/GUID](https://www.intruder.io/research/in-guid-we-trust).
- New test for [Text4shell: Apache Commons Text RCE via insecure interpolation](https://www.openwall.com/lists/oss-security/2022/10/13/4)( [CVE-2022-42889](https://www.openwall.com/lists/oss-security/2022/10/13/4)).
- New test for OpenSSL X.509 Email Address Buffer Overflows ( [CVE-2022-3786](https://www.openssl.org/blog/blog/2022/11/01/email-address-overflows/)).
- Updated test for Open Monitoring Interfaces.
- Updated the software composition analysis database.
- Updated the WordPress plugin vulnerabilities.

## Updates

- Updated the embedded Chromium browser to v107.0.5304.87/88.
- Updated how scans reaching max scan time are displayed in UI.
- Updated Issue Tracker UI to accept internal URLs.
- Improved Log4J checks to reduce false positives.

## Fixes

- Fixed the issue causing the IAST bridge to fail to send responses to the sensor when large packets are received from the sensor.
- Added loopback routes that returned ‘undefined’ as an HTTP method.
- Added the keep connection alive message between AcuSensor and the web application scanner to keep the connection alive.

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
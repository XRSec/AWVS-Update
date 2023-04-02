# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-15.5-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## Latest 15.5

### New feature

- .NET Core AcuSensor now supports installing on Linux. Note: When upgrading, please use the [new .NET IAST AcuSensor Installation Instructions](https://www.acunetix.com/support/docs/wvs/deploying-acusensor-for-net-core/).

### Security checks

- Improved the Server-side prototype pollution check.
- Updated the WordPress plugin vulnerabilities.
- Updated the software composition analysis database.

### Improvements

- Added sitemap parser to better handle the sitemap files.
- Improved the user interface to remove the hyperlink for websites that users do not have permission to.
- Improved scanner to identify XSS in forms where these forms are protected with a CSRF token that is changing each time the page is refreshed.
- Increased limit for data exchanged between IAST AcuSensors and the Acunetix engine.
- Improved the token validator for new Jira tokens.

### Fixes

- Fixed the OpenVAS service on Acunetix Premium Online to avoid the scan queue.
- Fixed bug causing some vulnerability checks to not execute on scans which are paused and resumed.
- Fixed issue with the request header limit for Github/Gitlab issue trackers.
- Fixed the issue of sending issues to Bugzilla.
- Fixed the bug that threw an internal server exception when a system admin tries to add a new user.
- Fixed the UI bug that appeared when the target is network.
- Fixed the issue that rejected locations and schemes are still being scanned.
- Fixed the issue with the corrupted links that are sent via email after the scan.
- Fixed the password reset issue.
- Fixed possible false positive misconfiguration “ASP.NET expired session IDs are not regenerated”

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

## Previous 15.4.3

### New security checks

- New security check for Fortinet RCE ( [CVE-2022-39952](https://nvd.nist.gov/vuln/detail/CVE-2022-39952)).

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
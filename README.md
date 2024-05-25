# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-24.4.240427095-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## Latest 24.4.240427095

### New features

- Added the ability to link an API definition URL for adding paths to a target before scanning. Read more about [how to add paths to targets and how this helps scanning](https://www.acunetix.com/support/docs/what-are-import-files-and-how-do-they-help-to-scan/).

### New security checks

- XWiki Platform RCE ( [CVE-2023-37462](https://nvd.nist.gov/vuln/detail/CVE-2023-37462))
- Dolibarr DB Theft ( [CVE-2023-33568](https://nvd.nist.gov/vuln/detail/CVE-2023-33568))
- ChatGPT-Next-Web SSRF ( [CVE-2023-49785](https://nvd.nist.gov/vuln/detail/CVE-2023-49785))
- OpenMetadata Auth Bypass ( [CVE-2024-28255](https://nvd.nist.gov/vuln/detail/CVE-2024-28255))
- Progress Kemp LoadMaster RCE ( [CVE-2024-1212](https://nvd.nist.gov/vuln/detail/CVE-2024-1212))
- Coldfusion Arbitrary File Read ( [CVE-2024-20767](https://nvd.nist.gov/vuln/detail/CVE-2024-20767))

### Improvements

- Fixed the password reset tool for Windows for Acunetix On-Premises
- .NET Core IAST Sensor: Removed dependency on NLog
- Various improvements in Deepscan, lessening the time to process pages / SPAs
- Deepscan updated to not interact with Google Maps
- Updated detection for monitoring systems
- Updated detection of web installers

### Fixes

- Correct warning is now displayed when attempting to add more than permitted target variations
- Addressed several usability and design issues across application settings
- Fixed a possible problem starting OpenVAS scans with Acunetix On-Premises
- Design updates for User settings in Acunetix Online
- Fixed an issue in the PHP sensor affecting PHP 8.1+ web applications
- For users in a User Group, target group assignment is properly applied under all scenarios
- Fixed a user permission issue when using custom roles
- Invite emails from Acunetix On-Premises for Linux are properly displaying content now
- Fixed the OOM (out of memory) problem when processing large PDF files

## Use

<font color=red><h3>**请勿使用阿里云源**, 否则无法拉取最新版本, 推荐上海交大源</h3></font>

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
192.168.0.108 awvs.lan
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

## Previous 24.3.240411164

### Improvements

- Replaced an expiring Invicti Signing Code Certificate for Windows binaries

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

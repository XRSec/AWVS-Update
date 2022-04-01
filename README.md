# [AWVS14 Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-14.7.220401065-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org) 

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes
- Version 14 build 14.7.220401065 for Windows, Linux and macOS – 1st April 2022

### New Vulnerability checks

- Test for [Spring4Shell vulnerability](https://www.acunetix.com/blog/web-security-zone/critical-alert-spring4shell-rce-cve-2022-22965-in-spring/) ([CVE-2022-22965](https://tanzu.vmware.com/security/cve-2022-22965))

## Latest  14.7.220329162

### Updates

- Upgraded Chromium to v99.0.4844.84

## Use

```bash
docker run -it -d \
--name awvs \
-p 3443:3443 \
--restart=always \
xrsec/awvs:latest
```

### Edit HOSTS

```bash
sudo vi /etc/hosts
192.168.0.1 awvs.lan
```

### RootCA 「must」

Downlaod && Install [`RootCA.cer`](https://cdn.jsdelivr.net/gh/XRSec/AWVS14-Update@main/.github/resources/ca.cer)

### Visit Web

```ini
URL: https://awvs.lan:3443/#/login
UserName: awvs@awvs.lan
PassWord: Awvs@awvs.lan
```

<hr>

## Latest 14.7.220322147

### New Vulnerability checks

- Test for [host CMS Theme Preview XSS](https://github.com/TryGhost/Ghost/security/advisories/GHSA-9fgx-q25h-jxrg) ([CVE-2021-29484](https://nvd.nist.gov/vuln/detail/CVE-2021-29484))

### Updates

- Engines page in UI now shows the number of Targets bound to a scanning engine
- Vulnerabilities page in UI shows the Target Tracker Issue Id when the vulnerability is sent to an Issue Tracker
- Upgraded Chromium to v99.0.4844.0
- JWT audit checks are now done on GET / POST parameters

### Fixes

- Fixed several Scanner crashes
- Numerous UI updates / fixes
- Fixed error when configuring GitHub Issue Trackers
- Numerous fixes related to CSRF token management
- Better handling of imported URLs that are excluded in LSR
- fixed issue causing pre-request scripts to be renamed, causing import scripts not to fail to be loaded

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

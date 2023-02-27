# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-15.4-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## 15.4

## New features

- Improved the [default roles](https://www.acunetix.com/support/docs/overview-of-users-and-roles-in-acunetix/#h.dfr9nk27a72e).

## New security checks

- Updated the WordPress plugin vulnerabilities.
- Updated the software composition analysis database.
- New security check for detection of ASP.NET core in the development mode.
- Added various checks for Content Security Policy misconfiguration.
- New security check for [Oracle Web Applications Desktop Integrator unauthenticated takeover](https://blog.viettelcybersecurity.com/cve-2022-21587-oracle-e-business-suite-unauth-rce/). ( [CVE-2022-21587](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-21587))
- New security check for Deserialization RCE vulnerability in [Oracle Access Manager OpenSSO Agent](https://www.oracle.com/security-alerts/cpujan2022.html). ( [CVE-2021-35587](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-35587))
- Updated the file extensions and parameter exclusions.
- New security check for [F5 BIG-IP Cookie Remote Information Disclosure](https://www.virtuesecurity.com/kb/f5-big-ip-cookie-remote-information-disclosure/).
- New security check detecting retired hash functions usage in SAML.
- Improved the SQL injection check to identify whether the database user has admin privileges.

## Improvements

- Added the Heuristic server-side routing detection to optimize attacks.
- Updated the embedded Chromium browser to v109.0.5414.119.
- Added the company name field to the registration process to Acunetix.
- Updated the issue tracker integrations to show the link to the relevant ticket created in those issue trackers.
- Updated the DISA STIG report to version 5.2.
- Improved the CSV importing link to limit the target limit to 500.
- Improved the scanner engine to reduce the memory footprint.
- Improved the .NET IAST sensor to mask any password.

## Fixes

- Fixed the pagination bug on the Targets page.
- Fixed the crawler issue that the page becomes unresponsive when it contains many elements.
- Fixed the single-page application crawler to be consistent in the form submission.
- Fixed a notification bug that does not redirect users to the correct URL for the finished scan.
- Fixed the bug that does not refresh the user interface after the update.

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

## Previous 15.3.1

## Fixes

- Fixed the Linux installations for updating issues.

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
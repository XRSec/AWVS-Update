# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-23.6.230628115-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## Latest 23.6.230628115

### Important note

Acunetix Premium now uses the Calver versioning convention. Please note that starting from version 23.6.230628115, we have deprecated support for Windows 8, Server 2012 and Server 2012 R2. Please update your Windows Operating System to Windows 10 (or later) or Windows Server 2016 (or later) to use this and upcoming releases.

### New Features

- \[Closed beta feature\] Internal site scanning for on-demand users for Windows machines

### New Security Checks

- Improved support for GraphQL detection and scanning
- New check for [Passive and Active Mixed Content over HTTPS](https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content)
- New check for [Open Silverlight Client Access Policy](https://docs.microsoft.com/en-us/previous-versions/windows/silverlight/dotnet-windows-silverlight/cc645032(v=vs.95))
- New check for [Open Policy Crossdomain.xml](https://web.archive.org/web/20120303231120/http://blogs.adobe.com/stateofsecurity/2007/07/crossdomain_policy_files_1.html)

### Improvements

- Acunetix Premium now ships with Chromium 114.0.5735.133/134 on Linux and Windows
- Updated UI design in select parts of the product
- Added support for OpenAI manifest files

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

## Previous 15.7.230616162

### Important note

Acunetix Premium 15.7.230616162 is the latest version available for installation on Windows 8, Server 2012, and Server 2012 R2. If you wish to receive new updates, we recommend updating your operating system to either Windows 10, Windows Server 2016, 2019, or 2022.

### New security checks

- Added new security check for MOVEIt Transfer SQL Injection. ( [CVE-2023-34362](https://nvd.nist.gov/vuln/detail/CVE-2023-34362 "https://nvd.nist.gov/vuln/detail/CVE-2023-34362"))

### Improvements

- Updated the Software Composition Analysis (SCA) database.
- Updated the embedded Chromium browser to v109.0.5414.149 for Windows and 114.0.5735.110 for Linux.

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
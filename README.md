# [AWVS Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-23.7.230728157-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS_Update](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml/badge.svg)](https://github.com/XRSec/AWVS-Update/actions/workflows/AWVS_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org)

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes

[![Star History Chart](https://api.star-history.com/svg?repos=XRSec/AWVS-Update&type=Date)](https://star-history.com/#XRSec/AWVS-Update&Date)

## Latest 23.7.230728157

### Important note

Please note that starting from version 23.6.230626159, we have deprecated support for Windows 8, Server 2012 and Server 2012 R2. Please update your Windows Operating System to Windows 10 (or later) or Windows Server 2016 (or later) to use this and upcoming releases.

### New Features

- \[Closed beta feature\] Acunetix now includes Runtime SCA, which identifies the technologies used on the scanned endpoints, and highlights the technologies with known vulnerabilities.
- \[Closed beta feature\] The internal scanning agent in Acunetix Online, available in closed BETA, can now start multiple concurrent scans.

### New Security Checks

- Check if API responses containing PII are accessible without authentication
- Test for Joomla Unauthorised Access Vulnerability ( [CVE-2023-23752](https://nvd.nist.gov/vuln/detail/CVE-2023-23752))
- [Test for authentication bypass in the Express javascript framework due to case-insensitive path handling](http://expressjs.com/en/api.html#:~:text=case%20sensitive%20routing)
- Test for Citrix Gateway XSS ( [CVE-2023-24488](https://nvd.nist.gov/vuln/detail/CVE-2023-24488))
- Test for authentication bypass and privilege escalation in WooCommerce ( [CVE-2023-28121](https://nvd.nist.gov/vuln/detail/CVE-2023-28121))
- [Detect if Rails is running in debug mode](https://guides.rubyonrails.org/configuring.html#rails-environment-settings)
- Detect Access Control Bypass for Remote Code Execution for Adobe ColdFusion ( [CVE-2023-29298](http://cve-2023-29298), [CVE-2023-29300](https://nvd.nist.gov/vuln/detail/CVE-2023-29300))

### Improvements

- Updated The CWE Top 25 Report to the latest 2023 version
- Improvements to the .NET IAST AcuSensor allowing more information gathering
- Improved support for Shadow DOM in LSR
- Improvements to NGINX Alias traversal security check
- Improvements to WordPress vulnerability detection
- Improvements to the Code Execution security checks

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

## Previous 23.6.230628115

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

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
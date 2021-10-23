# [AWVS14 Update](https://blog.zygd.site/AWVS14%20Update.html)

![version](https://img.shields.io/badge/Version-14.4.210913167-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml)

## [InfO](https://www.acunetix.com/support/build-history/)

Version 14 build 14.4.210913167 for Windows, Linux and macOS – 14th September 2021

### New vulnerability checks

- Added check for [Unrestricted access to Kong Gateway API](https://docs.konghq.com/getting-started-guide/2.5.x/)
- Added check for [Unrestricted access to Haproxy Data Plane API](https://www.haproxy.com/documentation/hapee/latest/api/data-plane-api/installation/)
- Added check for [OData feed accessible anonymously](https://www.upguard.com/breaches/power-apps)
- Added check for [Unauthenticated OGNL injection in Confluence Server and Data Center](https://github.com/httpvoid/writeups/blob/main/Confluence-RCE.md) ([CVE-2021-26084](https://nvd.nist.gov/vuln/detail/CVE-2021-26084))
- Added check for [Microsoft Exchange Server Pre-auth Path Confusion vulnerability](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-34473) ([CVE-2021-34473](https://nvd.nist.gov/vuln/detail/CVE-2021-34473))

### Updates

- Updated CORS Origin Validation check

### Updates by Docker

- Automatic deployment using Github Action

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
MD5 ( Dockerfile)  = 8caa1ea56a3b9577c4d3a7bf6d3dfa89
MD5 ( acunetix/.hosts)  = f628f786e8ccac389ee4743ed563fd0f
MD5 ( acunetix/awvs_listen.zip)  = cf4ca0a243738211ab2bab9a3f6cadc5
MD5 ( acunetix/xaa)  = 9d158d9dc4a9fd1fc05d85d319ebe79d
MD5 ( acunetix/xab)  = 513afa398f8c2cf4ee54a04eec96b5ba
MD5 ( acunetix/xae)  = 67a8297cd4917a5bb62bf4e351545987
MD5 ( acunetix/xad)  = d3962b36dcd833930203ddc42a598cd0
MD5 ( acunetix/xac)  = 1927204364b74dd3ba8cd9a57e5735ff
MD5 ( awvs.sh)  = a6b05031632a9175fb44ea11f574f7a9
➜  AWVS14-Docker git:(main) 
```

> 本次更新开始，不再提供破解补丁,请自行处理
> 
> [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org/index.php/archives/140/) 
> 
> This update starts, no more cracked patch, please handle yourself

<hr>

## Latest 14.4.210831180

### Info

Version 14 build 14.4.210831180 for Windows, Linux and macOS – 1st September 2021

#### Updates

#### Fixes

- Fixed: Error when adding new Targets
- Fixed: Scanner crash when using a Postman import file

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

[![Latest version](https://img.shields.io/badge/Fahai-法海之路-da282a)](https://www.fahai.org/index.php/archives/140/) [www.fahai.org](https://www.fahai.org/index.php/archives/140/)

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

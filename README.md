# [AWVS14 Update](https://awvs.vercel.app/)

![version](https://img.shields.io/badge/Version-14.7.220322147-da282a)  [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/awvs?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/awvs) [![AWVS14_Update](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml/badge.svg)](https://github.com/XRSec/AWVS14-Update/actions/workflows/AWVS14_Update.yml) ![cracking](https://img.shields.io/badge/No-cracking-da282a) [![Latest version](https://img.shields.io/badge/fahai.org-法海之路-da282a)](https://www.fahai.org) 

## [InfO](https://www.acunetix.com/support/build-history/)

- 本仓库及相关资源仅供个人测试，请勿用于非法用途
- This warehouse and related resources are for personal testing only, please do not use them for illegal purposes
- Version 14 build 14.7.220322147 for Windows, Linux and macOS – 1st March 2022

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

## Latest 14.7.220228146

### New Features

- .NET IAST Sensor (AcuSensor) can now be installed on .NET Core v3 and v5 on Windows (with Kestrel server)
- Acunetix Scanner updated to support Routes for frameworks supported by the IAST sensors (AcuSensor)
- Added support for Laravel framework in PHP IAST Sensor (AcuSensor)
- Added support for CodeIgnitor framework in PHP IAST Sensor (AcuSensor)
- Added support for Symphony framework in PHP IAST Sensor (AcuSensor)
- Added support for ASP.NET MVC in .NET Core IAST Sensor (AcuSensor)
- Added support for Razor Pages in .NET Core in .NET IAST Sensor (AcuSensor)
- Added support for Web API in .NET Framework and .NET Core IAST Sensors (AcuSensor)
- Added support for Spring MVC in JAVA IAST Sensor (AcuSensor)
- Added support for Spring Struts2 in JAVA IAST Sensor (AcuSensor)
- Added Prompt Message

### New Vulnerability Checks

- Acunetix has been updated to detect the following vulnerabilities using IAST:

- - LDAP Injection
  - Unsafe Reflection of Untrusted Data
  - XPath Injection
  - Email Header Injection
  - Deserialization of Untrusted Data
  - MongoDB Injection
  - Server-side template injection (SSTI)
  - Server-side request forgery (SSRF)

- Acunetix IAST (AcuSensor) has been updated to detect over 30 new misconfigurations across all sensors

- li>New check for [Magento Config File Disclosure](https://tomrobertshaw.net/2012/11/magento-security-check-your-appetclocal-xml-file/)

- New check for [BillQuick Web Suite SQL injection](https://www.huntress.com/blog/threat-advisory-hackers-are-exploiting-a-vulnerability-in-popular-billing-software-to-deploy-ransomware) ([CVE-2021-42258](https://nvd.nist.gov/vuln/detail/CVE-2021-42258))

- New check for Apache Airflow Experimental API Auth Bypass ([CVE-2020-13927](https://nvd.nist.gov/vuln/detail/CVE-2020-13927))

- New check for [Apache Airflow default credentials](https://airflow.apache.org/docs/apache-airflow/stable/security/index.html)

- New check for [Apache Airflow Exposed configuration](https://www.intezer.com/blog/cloud-security/misconfigured-airflows-leak-credentials/)

- New check for [Apache Airflow Unauthorized Access Vulnerability](https://www.intezer.com/blog/cloud-security/misconfigured-airflows-leak-credentials/)

- New check for GoCD information disclosure ([CVE-2021-43287](https://nvd.nist.gov/vuln/detail/CVE-2021-43287))

- New check for [Grafana Plugin Dir Traversal](https://grafana.com/blog/2021/12/08/an-update-on-0day-cve-2021-43798-grafana-directory-traversal/) ([CVE-2021-43798](https://nvd.nist.gov/vuln/detail/CVE-2021-43798))

- New check for NodeBB Arbitrary JSON File Read ([CVE-2021-43788](https://nvd.nist.gov/vuln/detail/CVE-2021-43788))

- New check for [ManageEngine Desktop Central Deserialization RCE](https://srcincite.io/pocs/src-2020-0011.py.txt) ([CVE-2020–10189](https://nvd.nist.gov/vuln/detail/CVE-2020–10189))

- New check for [SolarWinds Orion API Auth bypass](https://kb.cert.org/vuls/id/843464) ([CVE-2020-10148](https://nvd.nist.gov/vuln/detail/CVE-2020-10148))

- New check for [Citrix ADC NetScaler Local File Inclusion](https://blog.unauthorizedaccess.nl/2020/07/07/adventures-in-citrix-security-research.html) ([CVE-2020-8193](https://nvd.nist.gov/vuln/detail/CVE-2020-8193))

- New check for [VMware vCenter vcavbootstrap Arbitrary File Read](https://github.com/l0ggg/VMware_vCenter)

- New check for [Pentaho API Auth bypass](https://packetstormsecurity.com/files/164784/Pentaho-Business-Analytics-Pentaho-Business-Server-9.1-Authentication-Bypass.html) ([CVE-2021-31602](https://nvd.nist.gov/vuln/detail/CVE-2021-31602))

- New check for [Sonicwall SMA 100 Unintended proxy](https://www.rapid7.com/blog/post/2022/01/11/cve-2021-20038-42-sonicwall-sma-100-multiple-vulnerabilities-fixed-2/) ([CVE-2021-20042](https://nvd.nist.gov/vuln/detail/CVE-2021-20042))

- New check for [VMware vCenter Log4Shell RCE](https://www.vmware.com/security/advisories/VMSA-2021-0028.html)

- New check for [VMware Horizon Log4Shell RCE](https://www.vmware.com/security/advisories/VMSA-2021-0028.html)

- New check for [MobileIron Log4Shell RCE](https://forums.ivanti.com/s/article/Security-Bulletin-CVE-2021-44228-Remote-code-injection-in-Log4j?language=en_US)

- New check for [Ubiquiti Unifi Log4Shell RCE](https://community.ui.com/releases/UniFi-Network-Application-6-5-55/48c64137-4a4a-41f7-b7e4-3bee505ae16e)

- New check for [Apache OFBiz Log4Shell RCE](https://blogs.apache.org/security/entry/cve-2021-44228)

- New check for Apache Struts2 Log4Shell RCE

- New check for Apache Solr Log4Shell RCE

- New check for Apache JSPWiki Log4Shell RCE

- New WordPress Core and WordPress plugins checks

### Updates

- IAST Sensors (AcuSensor) capabilities have been updated to improve the detection of:

- - Arbitrary File Creation
  - Directory Traversal
  - SQL Injection
  - Remote Code Execution

- Acunetix will start reporting when an old version of the IAST Sensor (AcuSensor) is installed on the web application

- Considerable update to the handling of CSRF tokens

- The Vulnerabilities page now includes a unique Vulnerability ID

- Multiple UI updates

- Multiple DeepScan updates

### Fixes

- Fixed issue with Gitlab issue types not showing in UI
- Fixed issue with Amazon AWS WAF export
- Fixed several scanner crashes
- Fixed issue with .NET IAST AcuSensor not working on IIS prior to version 10
- Fixed issue with Node.js IAST AcuSensor causing web application to stop working
- Fixed ordering issue caused in PDF Comprehensive reports for multiple scans
- Fixed timeout issue causing IAST data not to reach the Acunetix scanner

> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

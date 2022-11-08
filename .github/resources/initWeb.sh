#!/usr/bin/env bash
npm install github-md-html \
    && mkdir dist \
    && cp .github/resources/favicon.svg dist \
    && npx github-md-html --input=./README.md --output=./dist/index.html --title="Acunetix | Web Application Security Scanner" --keywords="Web 安全测试,渗透测试,Web 应用,awvs,AWVS" --description="Acunetix Web Vulnerability Scanner（AWVS）是用于测试和管理Web应用程序安全性的平台，能够自动扫描互联网或者本地局域网中是否存在漏洞，并报告漏洞" --icon="/favicon.svg"

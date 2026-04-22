---
title: CDP协议
type: concept
created: 2026-04-22
updated: 2026-04-22
tags: [browser-automation, cdp, chrome-devtools]
---

# CDP — Chrome DevTools Protocol

Chrome DevTools Protocol，浏览器自动化的底层协议。

## CDP 概述

CDP 是 Chrome 开发者工具使用的协议，通过 WebSocket 与 Chrome 通信来控制浏览器行为。

## 核心能力

- **Page** — 页面导航、截图、内容提取
- **Runtime** — JavaScript 执行
- **DOM** — DOM 节点操作
- **Network** — 网络请求监控
- **Input** — 模拟鼠标、键盘输入

## 使用场景

- 浏览器自动化测试
- 网页数据抓取
- AI Agent 的浏览器控制

## 实现

参见 [[03-应用工具/OpenCLI]] 的 Browser Bridge 扩展。

## Related concepts

- [[01-核心知识/Browser_Automation/Browser_Automation]] — 浏览器自动化概述
- [[03-应用工具/OpenCLI]] — 使用 CDP 的具体实现

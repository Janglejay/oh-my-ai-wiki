---
title: Agent工具链
type: concept
created: 2026-04-22
updated: 2026-04-22
tags: [coding-agent, tools, bash, git, file-ops]
---

# Agent 工具链

Coding Agent 依赖的核心工具集。

## 基础工具

| 工具 | 用途 |
|------|------|
| **Bash** | 执行 shell 命令、运行脚本 |
| **File Ops** | 读、写、编辑文件 |
| **Git** | 版本控制、commit、branch、PR |
| **Grep/Find** | 代码搜索、符号定位 |

## 进阶工具

| 工具 | 用途 |
|------|------|
| **Web Search** | 搜索文档、解决方案 |
| **Test Runner** | 执行测试、验证修改 |
| **Linter/Formatter** | 代码风格检查和格式化 |

## 工具发现

Agent 如何发现和使用工具：
- 显式注册的工具列表
- 动态工具发现机制
- 参见 [[01-核心知识/AI_Agent/Agent工具调用]]

## Related concepts

- [[01-核心知识/Coding_Agent/Coding_Agent]] — 编程 Agent 概述
- [[01-核心知识/Coding_Agent/Agent扩展]] — 插件扩展机制

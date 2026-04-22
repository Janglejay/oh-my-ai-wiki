---
title: Agent扩展
type: concept
created: 2026-04-22
updated: 2026-04-22
tags: [coding-agent, plugins, hooks, extensibility]
---

# Agent 扩展

Coding Agent 的扩展机制。

## 扩展类型

### Plugins（插件）
通过插件机制扩展 Agent 能力：
- 自定义工具
- 新领域知识
- 外部服务集成

### Hooks（生命周期钩子）
在 Agent 执行的关键节点插入自定义逻辑：
- 任务开始前
- 工具执行后
- 任务完成后

### Sub-agents（子 Agent）
在主 Agent 内部启动专门的子 Agent：
- 复杂任务分解
- 并行处理
- 专业化分工

## 实现案例

- **Claude Code** — 官方插件生态
- **oh-my-claudecode** — 多 Agent 编排扩展

## Related concepts

- [[01-核心知识/Coding_Agent/Coding_Agent]] — 编程 Agent 概述
- [[01-核心知识/Coding_Agent/Agent工具链]] — 内置工具
- [[02-落地实践/oh-my-claudecode]] — 编排扩展实践

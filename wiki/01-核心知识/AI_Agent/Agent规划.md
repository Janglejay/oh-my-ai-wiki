---
title: Agent规划
type: concept
created: 2026-04-22
updated: 2026-04-22
tags: [ai-agent, planning, reasoning, chain-of-thought]
---

# Agent 规划

## Planning 概述

Agent 的规划能力决定了它如何将复杂任务分解为可执行的步骤。

## 规划策略

- **Task Decomposition** — 将大任务拆分为子任务
- **Chain-of-Thought** — 链式推理，逐步思考
- **Tree of Thoughts** — 探索多种可能的行动路径
- **Self-Critique** — 自我批评和修正

## 与 Coding Agent 的结合

Coding Agent 需要强大的规划能力来处理：
- 多文件修改的顺序和依赖
- 测试策略的制定
- 回滚和错误恢复计划

## Related concepts

- [[01-核心知识/AI_Agent/Agent基础]] — agentic loop
- [[01-核心知识/AI_Agent/Agent工具调用]] — 工具使用
- [[01-核心知识/Coding_Agent/Coding_Agent]] — 编程场景的规划实践

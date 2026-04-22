---
title: Memory
type: concept
created: 2026-04-22
updated: 2026-04-22
tags: [llm, memory, context, state-management]
---

# Memory — 记忆与状态管理

LLM 的记忆机制，处理对话历史和持久化状态。

## 记忆类型

- **短期记忆** — 对话上下文窗口内的信息
- **长期记忆** — 持久化存储的知识和偏好
- **工作记忆** — 当前任务相关的临时状态

## 实现方式

- 对话历史摘要
- 向量数据库存储
- 结构化知识图谱
- Wiki 持久化（参见 [[01-核心知识/LLM基础/LLM_Wiki_Pattern]]）

## Related concepts

- [[01-核心知识/LLM基础/LLM_Wiki_Pattern]] — wiki 作为持久化记忆的实现方式

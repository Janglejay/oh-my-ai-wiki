---
title: RAG
type: concept
created: 2026-04-22
updated: 2026-04-22
tags: [llm, rag, retrieval, knowledge-base]
---

# RAG — Retrieval Augmented Generation

RAG 是一种结合检索和生成的 LLM 应用模式，通过从外部知识库检索相关信息来增强模型回答。

## 与 Wiki Pattern 的对比

| 维度 | RAG | LLM Wiki Pattern |
|------|-----|------------------|
| **知识存储** | 每次查询时检索原始文档 | LLM 将知识编译成持久化 wiki 页面 |
| **查询方式** | 相似度检索 | 直接基于 wiki 回答 |
| **知识复用** | 每次查询都需要检索 | 一次编译，多次读取 |
| **一致性** | 依赖检索质量 | wiki 页面经过 LLM 整理，一致性更高 |

## 适用场景

- 文档问答系统
- 企业知识库
- 需要实时更新知识的场景

## Related concepts

- [[01-核心知识/LLM基础/LLM_Wiki_Pattern]] — 对比：wiki 模式的知识编译方式

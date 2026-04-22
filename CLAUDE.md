# Oh My AI — 个人 AI 知识库

> Schema document — 处理本项目内容前必读。
> 与 `wiki/index.md` 一起构成项目的完整知识入口。

## ⚠️ 核心工作流规则

处理本项目内容时，**必须严格遵循以下流程**，永远不要绕过：

```
raw/ (原始物料) → summaries/ (摘要) → wiki/ (概念页面)
       ↑                 ↑                ↑
   永久保存           从 raw 提取        从 summaries 提炼
   不可删除           永远不直接         永久保存
                     从网络/外部来源
                     跳过 raw 进行摘要
```

### 为什么不能跳过 raw？

- **raw/** 是不可变的原始记录，保存来源的原始内容
- **summaries/** 是 LLM 阅读 raw 后提取的摘要
- 如果跳过 raw 直接从网络摘要，原始来源可能丢失，知识无法追溯

### 正确的 ingest 流程

1. 获取来源内容 → 存入 `raw/<category>/`
2. LLM 阅读 raw 内容 → 创建 `summaries/<source>.md`
3. LLM 阅读 summaries → 更新 `wiki/` 概念页面

## 项目结构

| 目录 | 作用 |
|------|------|
| **wiki/** | 核心知识库 — 编译后的概念页面，三分类结构 |
| **raw/** | 原始源文件（不可变）— 所有原始材料永久保存 |
| **summaries/** | 摘要 — 从 raw 提取的关键要点 |
| **audit/** | 人类反馈收件箱 |
| **log/** | 每日操作日志 |
| **outputs/** | 查询结果输出 |

## Wiki 三分类结构

```
wiki/
├── 01-核心知识/     ← 基础概念和方法论
│   ├── LLM基础/
│   ├── AI_Agent/
│   ├── Agent编排/
│   ├── Coding_Agent/
│   ├── Browser_Automation/
│   └── CLI_Tools/
│
├── 02-落地实践/     ← 个人扩展和实践项目
│   ├── oh-my-claudecode/
│   ├── oh-my-little-claude/
│   └── 实践笔记/
│
└── 03-应用工具/     ← 具体工具平台
    ├── Claude_Code/
    ├── Claw_Code/
    └── OpenCLI/
```

## Operations

遵循 llm-wiki skill 的五大操作： `compile`, `ingest`, `query`, `lint`, `audit`。
每次操作追加到 `log/YYYYMMDD.md`。

## Naming Conventions

- **概念页面**：`01-核心知识/<Category>/<Topic>.md`，如 `LLM基础/RAG.md`
- **实践页面**：`02-落地实践/<Project>/index.md`
- **工具页面**：`03-应用工具/<Tool>/index.md`
- **摘要页面**：`summaries/<slug>.md`，kebab-case 源码标识

所有页面需要 YAML frontmatter：`title`, `type`, `created`, `updated`, `sources`, `tags`。

## Wikilinks

- 使用 `[[Page Title]]` — 精确页面标题，大小写敏感
- 文件夹型页面链接到 index：`[[01-核心知识/AI_Agent/index|AI Agent]]`
- 每个概念/实体首次提及需链接，同一页面不超过两次

## Diagrams & Formulas

- 图表：**mermaid**，不用 ASCII art
- 公式：**KaTeX**（行内 `$...$`，块级 `$$...$$`）

## 给 AI 的提示

- 语言：双语（中文和英文）
- 语气：清晰、技术性、可读
- 深度：需要时深入，概述主题可浅
- 处理矛盾：同时列出，引用来源，加入 Open Questions
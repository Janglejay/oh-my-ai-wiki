---
title: llm-wiki-skill-readme
type: summary
source_url: https://github.com/lewisliu/llm-wiki-skill
source_type: article
date: 2026-04-14
ingested: 2026-04-14
tags: [knowledge-base, llm, wiki, openclaw]
---

# llm-wiki-skill README

**Source**: [lewisliu/llm-wiki-skill](https://github.com/lewisliu/llm-wiki-skill) · 2026-04-14

## Key takeaways

- LLM Wiki is a **self-compiling knowledge base pattern** where the LLM continuously builds and cross-links a Markdown wiki from raw sources.
- Unlike RAG (which re-retrieves raw docs on every query), this pattern has the LLM **compile** sources into a persistent wiki — knowledge compounds over time.
- Five core operations: `compile`, `ingest`, `query`, `lint`, `audit`.
- Human owns sourcing and feedback; LLM owns writing, cross-referencing, and bookkeeping.

## Core concepts

- **Divide and conquer**: target 400–1200 words per page; split oversized topics into `concepts/<topic>/` with an index + sub-pages.
- **Mermaid for diagrams, KaTeX for formulas** — no ASCII art.
- **Raw file policy**: small sources go to `raw/`, large binaries get pointer files in `raw/refs/`.
- **Audit is the human feedback surface**: humans file feedback via Obsidian plugin or web viewer; LLM processes it and applies corrections.

## Directory structure

```
wiki-root/
├── CLAUDE.md          ← Schema (most important — defines scope, conventions, articles)
├── log/               ← Per-day operation log
├── audit/              ← Human feedback inbox
│   └── resolved/      ← Processed feedback
├── raw/                ← Immutable source documents
├── wiki/               ← LLM-generated knowledge
│   ├── index.md       ← Master catalog
│   ├── concepts/
│   ├── entities/
│   └── summaries/
└── outputs/queries/   ← Query answers
```

## Related concepts

- [[Retrieval Augmented Generation]] — contrasts with compile pattern
- [[Knowledge Graph]] — similar cross-linking idea

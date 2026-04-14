---
title: OpenCLI
type: summary
source_url: https://github.com/jackwener/OpenCLI
source_type: article
date: 2026-04-14
ingested: 2026-04-14
tags: [opencli, browser-automation, cli-hub, ai-agent, website-adapter]
---

# OpenCLI

**Source**: [jackwener/OpenCLI](https://github.com/jackwener/OpenCLI) · MIT License

## Key takeaways

- OpenCLI turns **any website, Electron app, or local binary** into a deterministic CLI interface for both humans and AI agents.
- Provides 87+ built-in adapters for sites like Twitter/X, Reddit, Bilibili, Xiaohongshu, HackerNews, etc.
- Browser Bridge extension + local daemon gives AI agents **live browser control** via CDP (Chrome DevTools Protocol): click, type, extract, screenshot — fully scriptable.
- Features `explore`/`synthesize`/`generate` pipeline for **AI-powered adapter generation** from real browser behavior.
- CLI Hub unifies local tools (`gh`, `docker`, `obsidian`) through the same discovery surface with auto-install support.
- Desktop app adapters drive Electron apps (Cursor, Codex, ChatGPT, Notion, etc.) via CDP.
- **Zero LLM cost at runtime** — no tokens consumed when running commands.

## Core claims

OpenCLI solves the "AI agent can't access websites that don't have APIs" problem by combining browser automation with a adapter framework that crystallizes repeated browser interactions into stable, pipeable CLI commands.

The three automation surfaces:
1. **Built-in adapters** — pre-built commands for 87+ sites
2. **Live browser** — `opencli browser` for real-time page interaction
3. **Adapter generation** — `explore` → `synthesize` → `generate` pipeline

## Architecture highlights

- Node.js >= 21.0.0 (or Bun >= 1.0)
- Browser Bridge Chrome extension + local daemon on port 19825
- Exit codes follow `sysexits.h` conventions for CI/shell integration
- Output formats: `table`, `json`, `yaml`, `md`, `csv`

## Related concepts

- [[Browser Automation]] — underlying technology for live browser control
- [[CLI Hub]] — unified CLI discovery and passthrough pattern
- [[AI Agent Tool Discovery]] — how AI agents discover and use tools via AGENT.md

## Sources

- [[summaries/opencli-readme]] — (2026-04-14) Full README content

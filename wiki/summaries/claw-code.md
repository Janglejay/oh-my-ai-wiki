---
title: Claw Code
type: summary
source_url: https://github.com/ultraworkers/claw-code
source_type: article
date: 2026-04-14
ingested: 2026-04-14
tags: [claw-code, rust, ultraworkers, agent-harness, open-source]
---

# Claw Code

**Source**: [ultraworkers/claw-code](https://github.com/ultraworkers/claw-code) · Build-from-source only · Rust implementation

## Key takeaways

- **Public Rust implementation** of the `claw` CLI agent harness — the fastest repo in history to surpass 100k stars.
- Canonical implementation lives in `rust/` workspace; this repo is the community-facing build-from-source destination.
- Built by **UltraWorkers** — ecosystem includes oh-my-claudecode, oh-my-codex, clawhip, and others.
- **Not affiliated with Anthropic** — claims no ownership of original Claude Code source material.
- Auth requires **API key** (`ANTHROPIC_API_KEY`), not Claude subscription login.
- `cargo install claw-code` on crates.io is a **deprecated stub** — must build from source.
- Uses `claw doctor` as health check command.

## Ecosystem

```
ultraworkers/claw-code
├── oh-my-claudecode    — OMC for Claude Code
├── oh-my-codex         — OMC for OpenAI Codex CLI
├── clawhip             — hip/branch of claw
└── oh-my-openagent    — general open-agent orchestration
```

## Related concepts

- [[Claude Code]] — the original this reimplements
- [[AI Agent Harness]] — the CLI framework pattern
- [[Rust for AI Tools]] — why Rust for performance-critical AI tooling

## Sources

- [[summaries/claw-code-readme]] — (2026-04-14) Full README content

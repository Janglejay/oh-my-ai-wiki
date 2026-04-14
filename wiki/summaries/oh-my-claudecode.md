---
title: oh-my-claudecode
type: summary
source_url: https://github.com/Yeachan-Heo/oh-my-claudecode
source_type: article
date: 2026-04-14
ingested: 2026-04-14
tags: [oh-my-claudecode, multi-agent, orchestration, claude-code, tmux]
---

# oh-my-claudecode

**Source**: [Yeachan-Heo/oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) · MIT License · ⭐ 28k

## Key takeaways

- **Multi-agent orchestration layer** for Claude Code — "don't learn Claude Code, just use OMC."
- **Team mode** (v4.1.7+) is the canonical orchestration surface: `team-plan → team-prd → team-exec → team-verify → team-fix` pipeline.
- **19 specialized agents** across 4 lanes: Build/Analysis, Review, Domain, Coordination — each routed to optimal model tier (haiku/sonnet/opus).
- **Magic keywords** activate skills implicitly: `autopilot`, `ralph` (persistent loop), `ultrawork` (parallel), `ccg` (tri-model).
- **tmux CLI workers** (`omc team N:codex "..."`) spawn real CLI processes in split panes for Codex/Gemini.
- **OpenClaw integration** — 6 hook events (session-start, stop, keyword-detector, ask-user-question, pre/post-tool-use) forward to OpenClaw gateway.
- Smart model routing: Haiku for simple tasks, Opus for complex reasoning — saves 30-50% token cost.

## Core claims

OMC extends Claude Code with team orchestration without requiring the user to learn complex commands. The system automatically detects intent via magic keywords and routes to the appropriate skill/agent pipeline.

## Architecture highlights

- Skill layers compose: `[Execution] + [0-N Enhancements] + [Optional Guarantee]`
- Hook system reacts to 11 Claude Code lifecycle events
- `.omc/` directory persists state across context compaction resets
- Notepad survives compaction; re-injected after reset
- Plugin marketplace + npm dual install paths

## Related concepts

- [[AI Agent Orchestration]] — multi-agent coordination patterns
- [[Claude Code]] — the underlying agentic coding tool OMC extends
- [[Magic Keyword Detection]] — implicit skill activation via natural language

## Sources

- [[summaries/oh-my-claudecode-readme]] — (2026-04-14) Full README content

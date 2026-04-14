---
title: Claude Code
type: summary
source_url: https://github.com/anthropics/claude-code
source_type: article
date: 2026-04-14
ingested: 2026-04-14
tags: [claude-code, anthropic, agentic-coding, terminal, coding-agent]
---

# Claude Code

**Source**: [anthropics/claude-code](https://github.com/anthropics/claude-code) · npm: `@anthropic-ai/claude-code`

## Key takeaways

- **Agentic coding tool** that lives in the terminal, understands your codebase, and executes routine tasks via natural language.
- Installs via `curl -fsSL https://claude.ai/install.sh | bash` (Mac/Linux) or PowerShell (Windows).
- **Plugin system** for extending functionality with custom commands and agents.
- Supports lifecycle hooks: `UserPromptSubmit`, `SessionStart`, `PreToolUse`, `PostToolUse`, `SubagentStart`, `SubagentStop`, `PreCompact`, `Stop`, `SessionEnd`.
- Data collection policy: usage data, conversation data, `/bug` feedback — not used for model training.
- Built by Anthropic — the same company behind Claude.

## Core claims

Claude Code is a terminal-native AI coding agent that contrasts with IDE-based tools like Copilot. It maintains full codebase awareness, handles git workflows, and executes multi-step tasks autonomously.

## Plugin ecosystem

Comes with built-in plugins for code review, feature development, frontend design, security guidance, and more. Community plugins extend functionality.

## Related concepts

- [[AI Agent]] — general concept of AI agents that take actions
- [[Coding Agent]] — specialized agents for software development tasks
- [[oh-my-claudecode]] — orchestration layer built on top of Claude Code
- [[Claw Code]] — Rust reimplementation of the Claude Code agent harness

# OpenCLI

**Turn any website, Electron app, or local binary into a deterministic CLI interface for both humans and AI agents.**

[![GitHub stars](https://img.shields.io/github/stars/jackwener/OpenCLI?style=flat&color=yellow)](https://github.com/jackwener/OpenCLI)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

OpenCLI is a universal adapter system that converts websites, web apps, and desktop applications into AI-friendly command-line interfaces. It provides 87+ built-in adapters for popular platforms like Twitter/X, Reddit, Bilibili, Xiaohongshu, HackerNews, and more.

## What it does

OpenCLI solves the problem of AI agents needing to interact with services that don't have APIs or have restricted/rate-limited APIs. Instead of trying to scrape or use unofficial APIs, you drive a real browser — the same browser you're logged into.

## Key Features

- **87+ built-in adapters** for popular websites and services
- **Browser Bridge extension** for local browser control
- **Universal adapter system** — create adapters for any website
- **Deterministic CLI** — same input produces same output
- **Human + AI compatible** — works for both manual and automated use

## Architecture

OpenCLI uses a hub-and-spoke architecture:

```
          ┌──────────────┐
          │   OpenCLI    │  ← Hub: universal interface
          │     Hub      │
          └──────┬───────┘
                 │
     ┌───────────┼───────────┐
     ▼           ▼           ▼
┌─────────┐ ┌─────────┐ ┌─────────┐
│ Twitter │ │ Reddit  │ │  GitHub │  ← Spokes: site-specific adapters
│ Adapter │ │ Adapter │ │ Adapter │
└─────────┘ └─────────┘ └─────────┘
```

## Installation

```bash
# Clone the repository
git clone https://github.com/jackwener/OpenCLI
cd OpenCLI

# Install dependencies
npm install

# Run
node opencli.js <command> [options]
```

## Browser Bridge

The Browser Bridge extension enables OpenCLI to control your local browser:

1. Install the extension in Chrome/Edge
2. Configure the extension ID in OpenCLI
3. Run commands — OpenCLI controls your logged-in browser

## License

MIT License
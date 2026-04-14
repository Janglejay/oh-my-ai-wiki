# Oh My AI Knowledge Base

> Schema document — read at the start of every session together with `wiki/index.md`.
> Update after every major compile, ingest batch, or structural change.

## Scope

What this wiki covers:
- Large Language Models (LLM) architecture, training, and inference
- Prompt engineering techniques and best practices
- AI Agents and autonomous systems
- Machine learning fundamentals
- AI tools, frameworks, and platforms
- AI research papers and industry developments

What this wiki deliberately excludes:
- Hardware/MLOps infrastructure details (keep focused on concepts)
- Non-AI machine learning topics (traditional ML, computer vision, etc.)
- General software engineering not related to AI

## Operations

This wiki follows the llm-wiki skill's five operations: `compile`, `ingest`, `query`, `lint`, `audit`.
Every operation appends an entry to `log/YYYYMMDD.md`.

## Naming conventions

- **Concept pages** (`wiki/concepts/`): Title Case noun phrases. E.g., "Retrieval Augmented Generation", "Chain of Thought Prompting"
- **Folder-split concepts** (`wiki/concepts/<topic>/`): used when a topic exceeds ~1200 words. Contains `index.md` + one file per aspect.
- **Entity pages** (`wiki/entities/`): Proper names of people, organizations, tools. E.g., "Andrej Karpathy", "OpenAI", "LangChain"
- **Summary pages** (`wiki/summaries/`): kebab-case source slug. E.g., "karpathy-llm-wiki-gist", "attention-is-all-you-need"

All pages require YAML frontmatter: `title`, `type`, `created`, `updated`, `sources`, `tags`.

### Wikilinks
- Always use `[[Page Title]]` — exact page title, case-sensitive.
- For folder-split pages, link to the index: `[[concepts/Foo/index|Foo]]`.
- Link the first mention of every entity or concept. Do not link the same page more than twice per article.

### Diagrams and formulas
- All diagrams are **mermaid**. No ASCII art.
- All formulas are **KaTeX** (inline `$...$` or block `$$...$$`).

### Raw file policy
- Small text sources → copy into `raw/<subfolder>/`.
- Large binaries → create a pointer file at `raw/refs/<slug>.md` with `kind: ref` and `external_path` fields. Do not copy the binary.

## Current articles

*None yet — start by ingesting sources.*

### Concepts
*(none)*

### Entities
*(none)*

### Summaries
*(none)*

## Open research questions

- What are the most effective prompt engineering techniques for different tasks?
- How do AI Agents coordinate multiple tools effectively?
- What are the key differences between major LLM architectures?

## Research gaps

Sources to ingest:
- [ ] Karpathy's llm-wiki Gist — foundational pattern
- [ ] Attention Is All You Need — transformer paper
- [ ] Chain of Thought Prompting paper
- [ ] RLHF and Constitutional AI papers

## Audit backlog

*(none — run `python3 scripts/audit_review.py <wiki-root> --open` to refresh)*

## Notes for the LLM

- Language: bilingual (Chinese and English)
- Tone: clear, technical, accessible
- Depth: deep technical where needed, survey-level for overview topics
- Handling contradictions: state both, cite each source, add to Open Research Questions.

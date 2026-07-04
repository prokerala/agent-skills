# Prokerala Astrology Agent Skills

Agent skills for building integrations with the [Prokerala Astrology API](https://api.prokerala.com). Skills follow the open [Agent Skills](https://agentskills.io) format — a folder with a `SKILL.md` (name, description, instructions) plus reference files loaded on demand — and work with any coding agent that supports the format, including Claude Code, Codex, OpenCode, Cursor, Pi, and others.

## Skills

### [`prokerala-astrology-api`](prokerala-astrology-api/SKILL.md)

Developer reference for the Prokerala Astrology API v2 (REST, any language).

- All 112 API operations, organized by resource (Numerology, Horoscope, Western Astrology, Daily Panchang, Marriage Matching, Chaldean Numerology, KP Astrology, Prediction, PDF Report, Calendar), with parameters, enums, and response schemas
- OAuth 2.0 client credentials authentication and token caching
- Integration guides: query parameter encoding (including nested object parameters), error handling, common pitfalls, copy-paste cURL and Node.js examples
- Pointers to official SDKs, example clients, and a browser/mobile proxy setup

### [`prokerala-sdk-php`](prokerala-sdk-php/SKILL.md)

Reference for [`prokerala/astrology-sdk`](https://github.com/prokerala/astrology-sdk), the official PHP client for the API.

- Install, client bootstrap, and first call
- Catalog of all 99 service classes mapped to API endpoints
- Exception handling and token caching (PSR-16)
- Maintainer guide for extending the SDK with new endpoints

The two skills cross-reference each other: the PHP SDK skill defers endpoint parameters and response schemas to the API skill.

## Installation

### Recommended: `npx skills`

The [skills CLI](https://github.com/vercel-labs/skills) installs skills from this repository into any of 70+ supported agents (Claude Code, Codex, OpenCode, Cursor, Cline, Windsurf, Pi, AiderDesk, and more). It detects the agents on your machine and asks where to install:

```bash
npx skills add prokerala/agent-skills            # interactive: pick skills and agents
npx skills add prokerala/agent-skills --all      # install both skills
npx skills add prokerala/agent-skills --all -g   # install globally (all projects)
```

To target specific agents non-interactively:

```bash
npx skills add prokerala/agent-skills --all -a claude-code -a codex -y
```

Update later with `npx skills update`.

### Manual Installation

Copy (or symlink) the `prokerala-astrology-api/` and `prokerala-sdk-php/` directories into your agent's skills directory:

| Agent | Project scope | Global scope |
|-------|---------------|--------------|
| Claude Code | `.claude/skills/` | `~/.claude/skills/` |
| Codex | `.agents/skills/` | `~/.agents/skills/` |
| Agents using the shared skills directory (OpenCode, Pi, and others) | `.agents/skills/` | `~/.agents/skills/` |

For any other agent, check its documentation for the Agent Skills directory and place the two skill folders there. Keep each skill folder intact — the `references/` files are loaded via relative links from `SKILL.md`.

### Agents Without Native Skills Support

The skills are plain markdown with no agent-specific features, so they still work as regular context. For example, with Aider you can add the entry points to the chat as read-only context:

```bash
aider --read prokerala-astrology-api/SKILL.md --read prokerala-sdk-php/SKILL.md
```

and ask the agent to open files under `references/` as needed.

## Skill Discovery

The skills are also published for automatic discovery per the [Agent Skills Discovery RFC](https://github.com/cloudflare/agent-skills-discovery-rfc): a discovery index at

```
https://api.prokerala.com/.well-known/agent-skills/index.json
```

lists both skills as `archive` entries whose URLs point at per-skill `.zip` files attached to this repository's [GitHub releases](https://github.com/prokerala/agent-skills/releases), each with a `sha256` digest for client-side verification.

## Getting API Credentials

Register an app on the [Prokerala API dashboard](https://api.prokerala.com) to obtain a client ID and client secret. Keep the client secret confidential — see the authentication guide in the API skill.

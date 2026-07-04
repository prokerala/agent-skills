# prokerala-sdk-php

Agent skill: reference for [`prokerala/astrology-sdk`](https://github.com/prokerala/astrology-sdk), the official PHP client for the [Prokerala Astrology API](https://api.prokerala.com). Covers installation, client bootstrap, a catalog of all 99 service classes mapped to API endpoints, exception handling, token caching (PSR-16), and a maintainer guide for extending the SDK.

The agent-facing entry point is [SKILL.md](SKILL.md); detailed documentation lives under [references/](references/).

## Install

```bash
npx skills add prokerala/agent-skills --skill prokerala-sdk-php
```

Or copy this directory into your agent's skills directory. See the [repository README](../README.md) for per-agent instructions and the companion [`prokerala-astrology-api`](../prokerala-astrology-api/) skill for endpoint-level API documentation.

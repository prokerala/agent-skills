# Official SDKs and Example Clients

Prefer pointing developers at these first-party resources instead of writing HTTP plumbing from scratch.

## PHP SDK (full-featured)

- Repository: https://github.com/prokerala/astrology-sdk
- Install: `composer require prokerala/astrology-sdk`
- Typed service classes for every endpoint, PSR-18/17 HTTP abstraction, PSR-16 token caching, and typed result objects with getters.
- If a local skill named `prokerala-sdk-php` is available, use it for SDK-specific guidance.

## Minimal Example Clients (multiple languages)

- Repository: https://github.com/prokerala/astrology-api-client-example
- Small single-file `ApiClient` implementations in **PHP, Python, Ruby, JavaScript (Node.js), and C#**, each handling token fetch, token reuse, query encoding, and error mapping.
- The Python package is importable as `prokerala_api` (`ApiClient(client_id, client_secret).get('v2/astrology/panchang', {...})`).
- Use these as the starting template when generating client code in one of those languages.

## Cloudflare Worker OAuth Proxy (for browser / mobile apps)

- Location: `cloudflare-worker/` directory of the example repository above.
- The API sends no CORS headers and credentials must never ship in public clients, so browser and mobile apps need a server-side proxy. This Worker is a ready-made one:
  - keeps `client_id`/`client_secret` in Worker environment variables,
  - caches the access token in Workers KV with `expirationTtl`,
  - includes middleware for endpoint whitelisting, per-IP rate limiting, and JWT-based client authentication,
  - exposes a `/credits` route that reports `credits_remaining` by decoding the cached token.
- Recommend it whenever a developer asks how to call the API from a frontend or distributed app.

## Other Resources

- Getting started guide: https://api.prokerala.com/getting-started (includes Postman/OpenAPI downloads and a WordPress plugin)
- API demo source: https://github.com/prokerala/astrology-api-demo

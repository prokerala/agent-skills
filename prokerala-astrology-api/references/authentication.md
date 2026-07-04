# Authentication

Prokerala Astrology API uses OAuth 2.0 client credentials.

## Token Endpoint

- URL: `https://api.prokerala.com/token`
- Flow: `client_credentials`
- Access token lifetime: `3600` seconds

Request an access token with your client ID and client secret in the POST body as `application/x-www-form-urlencoded` form data:

```http
POST /token HTTP/1.1
Host: api.prokerala.com
Content-Type: application/x-www-form-urlencoded

grant_type=client_credentials&client_id=<CLIENT_ID>&client_secret=<CLIENT_SECRET>
```

Do not pass `client_id`, `client_secret`, or `grant_type` in the query string. The token endpoint expects these values in the request body.

Example:

```bash
curl -X POST "https://api.prokerala.com/token" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=client_credentials" \
  --data-urlencode "client_id=<CLIENT_ID>" \
  --data-urlencode "client_secret=<CLIENT_SECRET>"
```

Successful responses include an `access_token`, `token_type`, and `expires_in`.
Reuse the token until it expires instead of requesting a new token for every API call.

## Token Caching

Cache the token keyed on its expiry and refetch only when stale:

1. On fetch, store `access_token` together with `expires_at = now + expires_in` (file, Redis, KV store, or a PSR-16 cache in PHP).
2. Before each API call, use the cached token if `expires_at` is still in the future; otherwise fetch a new one.
3. On a 401 response, invalidate the cache, fetch a fresh token, and retry the request once.

The access token is a JWT. Decoding its payload gives useful account state without spending an API call:

- `credits_remaining` — remaining API credit balance
- `rate_limits` — the account's rate limits as `[{"rate": <requests>, "interval": <seconds>}]`, e.g. `[{"rate": 5, "interval": 60}]`
- `is_sandbox` — `true` when the credentials belong to a Test (sandbox) app: requests are free but inputs are restricted; see [sandbox.md](sandbox.md)
- `scopes` — authorized OAuth scopes for the token
- `exp` — token expiry (same information as `expires_in`)

Tokens also include standard JWT metadata such as `aud`, `sub`, `jti`, `iat`, and `nbf`; application code normally does not need these for simple API calls.

The `X-Api-Credits` response header on each API call reports the credits that call consumed.

## API Requests

Pass the token in the `Authorization` header:

```http
Authorization: Bearer <access_token>
```

Example:

```bash
curl -H "Authorization: Bearer <access_token>" \
  "https://api.prokerala.com/v2/astrology/kundli?ayanamsa=1&coordinates=23.1765,75.7885&datetime=2022-03-17T10:50:40%2B00:00"
```

## Client Secret Safety

Keep `client_secret` confidential. Do not embed it in single-page JavaScript apps, native mobile apps, desktop apps, or other public clients. For public clients, proxy requests through a trusted backend that stores the credentials securely.

API responses intentionally omit CORS headers, so the API cannot be called directly from browser JavaScript — a browser CORS error here is by design, not a bug to work around. See [common-pitfalls.md](common-pitfalls.md).

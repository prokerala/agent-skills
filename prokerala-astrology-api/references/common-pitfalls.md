# Common Integration Pitfalls

Review this file before generating sample code or troubleshooting failed API calls.

## Date-Time Values

Date-time query parameters must be complete ISO 8601 strings with the correct timezone offset.

Good:

```text
2004-02-12T15:19:21+05:30
```

In a query string, the `+` must be percent-encoded:

```text
2004-02-12T15:19:21%2B05:30
```

Avoid in query strings or for non-UTC local times:

```text
2004-02-12T15:19:21+05:30
2004-02-12T15:19:21Z
2004-02-12 15:19:21
```

Do not hardcode `Z` unless the value is actually UTC. For birth and event times, preserve the local civil time with its real offset.

## Coordinates

Coordinates are passed as `latitude,longitude`.

Good:

```text
10.214747,78.097626
```

Avoid reversing the order as `longitude,latitude`.

## Authentication

Use OAuth 2.0 client credentials. Send `grant_type`, `client_id`, and `client_secret` in the token request body as `application/x-www-form-urlencoded` form data, not as query parameters.

For API calls, send:

```http
Authorization: Bearer <access_token>
```

Reuse tokens until `expires_in` instead of requesting a token before every API call. Never expose `client_secret` in public clients.

## No CORS Headers / Browser Calls

API responses intentionally do not include CORS headers, so `api.prokerala.com` cannot be called directly from browser JavaScript. This is deliberate: calling the API from a browser would expose the `client_secret` or access token to anyone inspecting the page, where they can be stolen and misused.

If a browser `fetch`/XHR call fails with a CORS error, do not look for a CORS workaround. Route the request through your own backend (or an edge proxy such as a Cloudflare Worker) that holds the credentials, and have the browser call that instead. A ready-made Worker proxy is listed in [sdks-and-examples.md](sdks-and-examples.md).

## Object Query Parameters

For object query parameters, use bracket notation such as `profile[datetime]` and `profile[coordinates]`. See [query-parameters.md](query-parameters.md).

## Sandbox (Test App) Input Restrictions

If a request fails with a 400 whose detail starts with `In sandbox mode, ...`, the client credentials belong to a Test app, which accepts only restricted inputs (dates must be January 1st of any year; numerology names must come from a fixed test list). Adjust the test inputs or switch to Production app credentials — do not treat it as an API bug. See [sandbox.md](sandbox.md).

## Boolean Query Parameters

Send booleans as lowercase `true`/`false` (or `1`/`0`). Capitalized values such as `True` — the output of Python's `str(True)` — fail with a 400 `Invalid value` error. See [query-parameters.md](query-parameters.md).

## Error Responses

Non-2xx responses use a JSON envelope of the form `{"status": "error", "errors": [{"detail": ...}]}`. See [error-handling.md](error-handling.md) for the status-code mapping (400 validation, 401 auth, 403 quota, 429 rate limit, 5xx server) and retry guidance.

## Output Content Types

Most endpoints return JSON, but chart and report endpoints can return other content types:

- Chart endpoints that return a `ChartResult` respond with `image/svg+xml`. This covers `/astrology/chart` (with `format=svg`), the vedic chart endpoints (ashtakavarga, sarvashtakavarga, sudharshanachakra, KP chart), and the western chart endpoints (natal, transit, progression, solar return, synastry, composite chart and aspect-chart).
- `/report/personal-reading/instant` returns `application/pdf`.
- `/report/compatibility-reading/instant` returns `application/pdf`.

Handle the response as binary/text where appropriate instead of assuming JSON for every endpoint.

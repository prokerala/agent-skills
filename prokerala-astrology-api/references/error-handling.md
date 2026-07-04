# Error Handling

Read this before writing error handling for API integrations.

Successful JSON responses are wrapped in `{"status": "ok", "data": {...}}`; check `status` or the HTTP code, then read the payload from `data`.

## Error Response Envelope

Non-2xx responses return JSON in this shape:

```json
{
    "id": "a0a7be13-21c5-47d3-a282-7ebc824ddb96",
    "status": "error",
    "errors": [
        {
            "source": {"parameter": "/coordinates"},
            "code": "1002",
            "title": "Mandatory parameter missing",
            "detail": "Coordinates is mandatory. If latitude is `10.214 N` and longitude is `78.097 E`, the value should be string `10.21,78.09`."
        }
    ]
}
```

- `id` is a unique request identifier — log it and include it when contacting support.
- Every error entry has `title` and `detail`; `detail` is the reliable human-readable field to surface.
- Validation errors (400) additionally carry `code` (a string, e.g. `"1001"` invalid value, `"1002"` mandatory parameter missing, `"1004"` unsupported value — used for [sandbox](sandbox.md) restrictions) and `source.parameter` (a JSON-Pointer-style path to the offending query parameter). Other error types (401, 429) may omit `source` and `code`.
- Validation failures may include multiple entries in `errors`, one per invalid input.

## Status Code Mapping

| Status | Meaning | Handling |
|--------|---------|----------|
| 200 | Success | Parse per the operation's response schema |
| 400 | Input validation failed | Inspect every entry in `errors`; fix request parameters. Do not retry unchanged. |
| 401 | Authentication failed (missing/invalid/expired token) | Fetch a new access token and retry once. If it still fails, credentials are wrong. |
| 403 | Quota exceeded | The account is out of API credits. Do not retry until the quota resets or is topped up. |
| 429 | Rate limit exceeded | Back off and retry after a delay. See Rate Limits below. |
| 5xx | Server error | Retry with exponential backoff. |

This mapping matches the official SDKs: the PHP SDK (`prokerala/astrology-sdk`) raises `ValidationException` (400), `AuthenticationException` (401), `QuotaExceededException` (403), `RateLimitExceededException` (429), and `ServerException` (500).

## Rate Limits

- Requests are rate-limited per account. The account's limits are embedded in the access token: the JWT payload's `rate_limits` claim is an array of `{"rate": <requests>, "interval": <seconds>}` entries (for example `{"rate": 5, "interval": 60}` = 5 requests per 60 seconds).
- Requests that fail validation (400) still count toward the limit.
- A 429 response's `errors[0].detail` states the exceeded limit, e.g. `"You have exceeded the rate limit of 5 requests per 60 seconds on your account"`. Wait out the interval before retrying.

## Credits

- The `X-Api-Credits` response header reports the number of API credits consumed by the request. Costs vary widely by endpoint (simple data endpoints cost far less than chart or report endpoints), so read the header rather than assuming a flat cost.
- The OAuth access token is a JWT whose payload includes `credits_remaining` — decode the token to check the remaining balance without spending an API call.
- Sandbox (Test app) requests never deduct credits: successful calls report `X-Api-Credits: 0`. Sandbox validation errors (400) may report a non-zero value, but nothing is deducted — use the token's `is_sandbox` claim, not this header, to detect sandbox credentials.

## Notes

- Error payloads are JSON even for endpoints whose success response is SVG or PDF; check the HTTP status before interpreting the body.
- Do not treat a CORS failure in a browser as an API error; the API intentionally sends no CORS headers. See [common-pitfalls.md](common-pitfalls.md).

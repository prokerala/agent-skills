# Sandbox (Test) Mode

When creating an API client ("App") in the [dashboard](https://api.prokerala.com), you choose an app type: **Production** or **Test**. Requests from a Test app are sandboxed: **no credits are deducted for any request** (successful responses report `X-Api-Credits: 0`), making Test apps the right choice for development, CI, and demos.

Sandbox and production clients use the same base URL, authentication flow, endpoints, response formats, and rate limits. A sandbox access token is identified by `"is_sandbox": true` in its JWT payload (see [authentication.md](authentication.md)); its `credits_remaining` claim still reports the account's shared credit balance even though sandbox calls never reduce it.

One quirk: sandbox validation errors (400) may report a non-zero `X-Api-Credits` value even though nothing is deducted. Use the token's `is_sandbox` claim, not this header, to detect Test credentials.

## Input Restrictions

To prevent Test apps from being used in production, sandbox requests only accept a fixed set of input values:

| Input | Sandbox restriction |
|-------|--------------------|
| Date / datetime parameters (all endpoints except daily horoscope) | Must be **January 1st** — any year and any time of day are accepted (e.g. `2003-01-01T14:20:00+05:30` is valid, `2003-02-15T14:20:00+05:30` is not). |
| Name parameters (numerology endpoints) | Must be one of the test names: `alice`, `bob`, `charlie`, `diana`, `eve`, `frank`, `grace`, `heidi`, `ivan`, `judy`. |
| Daily horoscope | Only `2025-01-01` is supported; all date inputs are **silently mapped** to this date (no error is returned — the response's `date` field shows `2025-01-01` regardless of input). |

Endpoints that take both a name and a date (e.g. `/numerology/maturity-number`, `/numerology/essence-number`, `/numerology/karmic-debt-number`, `/numerology/bridge-number`, `/numerology/attainment-number`, `/numerology/rational-thought-number`) enforce both restrictions.

Additional endpoint-specific restrictions:

| Endpoints | Sandbox restriction |
|-----------|--------------------|
| `/astrology/nakshatra-porutham`, `/astrology/thirumana-porutham` (incl. `/advanced`) | Only the Ashwini nakshatra (value `0`) is allowed. |
| `/astrology/chandrashtama-periods` | Only the Mesha rasi (value `0`) is allowed. |
| `/report/personal-reading/instant`, `/report/compatibility-reading/instant` | A maximum of 5 modules per report. |

Requests outside these limits fail with a 400 validation error with `code` `"1004"`, a title such as `Unsupported value` or `Unsupported name`, `source.parameter` pointing at the offending input, and a `detail` naming the restriction, e.g.:

```json
{
    "source": {"parameter": "/datetime"},
    "code": "1004",
    "title": "Unsupported value",
    "detail": "In sandbox mode, only January 1st is allowed — any time and any year is accepted."
}
```

## Practical Guidance

- In sample code and tests written against a Test app, use January 1st datetimes (any year, any time) and the test names above.
- A 400 error mentioning "In sandbox mode ..." on otherwise-valid input means the client credentials belong to a Test app — switch to a Production app's credentials rather than changing the input.
- Keep separate credentials per environment: a Test app for development/CI, a Production app for release.

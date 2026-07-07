---
name: prokerala-astrology-api
description: Prokerala Astrology API v2 developer reference. Use when building, debugging, or explaining integrations with Prokerala Astrology API endpoints, OAuth client credentials authentication, Production/Test sandbox apps, request parameters, response schemas, astrology, horoscope, panchang, numerology, marriage matching, western astrology, KP astrology, PDF reports, or calendar APIs.
---

# Prokerala Astrology API

Use this skill as a developer reference for Prokerala Astrology API v2.

## How to Use This Skill

The API documentation is split into small files for on-demand loading.

**Directory structure:**
```
references/
|-- resources/      # 10 resource index files
|-- operations/     # 112 canonical operation files plus legacy aliases
`-- schemas/        # 98 schema groups, 384 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read the linked `references/operations/<operation>.md` file for method, path, parameters, request body, response content type, and response schema
4. If an operation references a schema, read the linked schema file; schema links are relative and may cross schema groups

Prefer resource indexes over guessing operation filenames. Some source OpenAPI operation IDs are generic or misspelled, and the resource indexes point to the cleaned operation filenames.

## Base URL

- `https://api.prokerala.com/v2`

## Authentication

Use OAuth 2.0 client credentials. Read `references/authentication.md` before writing sample code or troubleshooting 401 responses. Send token credentials in the POST body as form data, not as query parameters.

Always send API requests with:

```http
Authorization: Bearer <access_token>
```

Treat `client_secret` as confidential. Do not embed it in browser-only, mobile, or other public clients. The API intentionally sends no CORS headers, so it cannot be called directly from browser JavaScript — route browser apps through a backend proxy.

Dashboard apps come in two types: **Production** and **Test**. Test apps consume no credits but restrict input values (dates must be January 1st, numerology names must come from a fixed test list). See `references/sandbox.md` before writing code or tests against a Test app.

## Request Notes

- Date-time parameters must be complete ISO 8601 values with the correct timezone offset, for example `2004-02-12T15:19:21+05:30`.
- Do not hardcode `Z` unless the date-time is actually UTC. For a local birth/event time, pass its real offset such as `+05:30`.
- URL-encode `+` in timezone offsets as `%2B`; otherwise it can be interpreted as a space. In query strings, send `2004-02-12T15:19:21%2B05:30`, not `2004-02-12T15:19:21+05:30`.
- Coordinates are passed as `latitude,longitude`, for example `10.214747,78.097626`. To turn a user-entered place name into coordinates and timezone, use the client-side location search widget — see `references/location-search.md`.
- Encode object query parameters with bracket notation, for example `profile[datetime]`. See `references/query-parameters.md`.

## Integration Guides

- Common mistakes and troubleshooting: `references/common-pitfalls.md`
- Sandbox (Test) apps — free requests, restricted inputs: `references/sandbox.md`
- Error response envelope, status codes, retries, rate limits, credits: `references/error-handling.md`
- Query parameter encoding, including object parameters: `references/query-parameters.md`
- Location search widget — turn a place name into coordinates and timezone: `references/location-search.md`
- Copy-paste cURL and Node.js examples: `references/examples.md`
- Official SDKs, example clients, browser/mobile proxy: `references/sdks-and-examples.md`

## Resources

- **Numerology**: `references/resources/Numerology.md` (32 operations)
- **Horoscope**: `references/resources/Horoscope.md` (23 operations)
- **Western Astrology**: `references/resources/Western-Astrology.md` (18 operations)
- **Daily Panchang**: `references/resources/Daily-Panchang.md` (14 operations)
- **Marriage Matching**: `references/resources/Marriage-Matching.md` (10 operations)
- **Chaldean Numerology**: `references/resources/Chaldean-Numerology.md` (5 operations)
- **KP Astrology**: `references/resources/KP-Astrology.md` (4 operations)
- **Prediction**: `references/resources/Prediction.md` (3 operations)
- **PDF Report**: `references/resources/PDF-Report.md` (2 operations)
- **Calendar**: `references/resources/Calendar.md` (1 operation)

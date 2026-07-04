---
name: prokerala-sdk-php
description: Prokerala Astrology PHP SDK (prokerala/astrology-sdk) reference. Use when writing PHP code that calls the Prokerala Astrology API through the SDK, choosing service classes, handling SDK exceptions, configuring OAuth/token caching, or modifying/extending the SDK itself.
---

# Prokerala Astrology PHP SDK

`prokerala/astrology-sdk` is the official PHP client for the Prokerala Astrology API v2. It provides a typed service class per endpoint, PSR-18/17 HTTP abstraction, optional PSR-16 token caching, and typed result objects with getters.

Source repository: https://github.com/prokerala/astrology-sdk

## How to Use This Skill

- Consuming the SDK (install, bootstrap, first call): read `references/getting-started.md`.
- Finding the right service class for an endpoint: read `references/services.md` (all 99 services mapped to API paths).
- Modifying or extending the SDK (new endpoints, result classes, tests): read `references/maintainer-guide.md`.
- Endpoint parameters, enums, and response schemas are documented in the companion API skill `prokerala-astrology-api`; the SDK skill does not duplicate them.

## Requirements

- PHP >= 8.0
- Composer packages: `prokerala/astrology-sdk` plus a PSR-17/PSR-18 implementation (e.g. `nyholm/psr7` + `guzzlehttp/guzzle`) and optionally a PSR-16 cache (e.g. `symfony/cache`) for token caching.

## Quick Reference

```php
use GuzzleHttp\Client as HttpClient;
use Nyholm\Psr7\Factory\Psr17Factory;
use Prokerala\Common\Api\Authentication\Oauth2;
use Prokerala\Common\Api\Client;
use Prokerala\Api\Astrology\Location;
use Prokerala\Api\Astrology\Service\Kundli;

$psr17Factory = new Psr17Factory();
$httpClient = new HttpClient();

// Optional 6th argument: any PSR-16 cache; caches the OAuth token until expiry.
$authClient = new Oauth2($clientId, $clientSecret, $httpClient, $psr17Factory, $psr17Factory, $cache);
$client = new Client($authClient, $httpClient, $psr17Factory);

$location = new Location(23.1765, 75.7885, 0, new DateTimeZone('Asia/Kolkata'));
$datetime = new DateTimeImmutable('2022-03-17T10:50:40+05:30');

$result = (new Kundli($client))->process($location, $datetime);
$nakshatra = $result->getNakshatraDetails()->getNakshatra()->getName();
```

- Services take the `Client` in their constructor and expose a single `process(...)` method.
- Pass coordinates via `Location`; pass date-times as `DateTimeImmutable` (the SDK formats them ISO 8601 internally).
- `$client->getCreditUsed()` returns the API credits consumed by the last call (from the `X-Api-Credits` header).

## Exceptions

All in `Prokerala\Common\Api\Exception`, thrown by `Client::process()`:

| Exception | HTTP status | Meaning |
|-----------|-------------|---------|
| `ValidationException` | 400 | Invalid input; holds the full `errors` list |
| `AuthenticationException` | 401 | Bad or expired credentials |
| `QuotaExceededException` | 403 | Out of API credits |
| `RateLimitExceededException` | 429 | Too many requests; back off |
| `ServerException` | 500 | Server-side failure |
| `Exception` | other | Base class; catch-all |

`TokenExpiredException` is handled internally (the client refreshes the token and retries once); consumer code does not need to catch it.

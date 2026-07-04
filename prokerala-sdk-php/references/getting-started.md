# Getting Started

## Install

```bash
composer require prokerala/astrology-sdk
# PSR-17/18 implementations (any will do; these are the suggested ones)
composer require nyholm/psr7 guzzlehttp/guzzle
# Optional: PSR-16 cache for token caching
composer require symfony/cache
```

## Bootstrap the Client

```php
use GuzzleHttp\Client as HttpClient;
use Nyholm\Psr7\Factory\Psr17Factory;
use Prokerala\Common\Api\Authentication\Oauth2;
use Prokerala\Common\Api\Client;
use Symfony\Component\Cache\Adapter\FilesystemAdapter;
use Symfony\Component\Cache\Psr16Cache;

$psr17Factory = new Psr17Factory();
$httpClient = new HttpClient();
$cache = new Psr16Cache(new FilesystemAdapter());

$authClient = new Oauth2(
    getenv('CLIENT_ID'),
    getenv('CLIENT_SECRET'),
    $httpClient,
    $psr17Factory,   // request factory
    $psr17Factory,   // stream factory
    $cache           // optional; caches the OAuth token until it expires
);

$client = new Client($authClient, $httpClient, $psr17Factory);
```

Keep credentials in environment variables or a secrets store, never in committed code. Without the cache argument the SDK fetches a token per process; with it, the token is reused across requests until expiry.

Dashboard apps are either **Production** or **Test**. Test app credentials consume no credits but only accept restricted inputs — dates must fall on January 1st (any year/time) and numerology names must come from a fixed test list. A `ValidationException` whose message starts with "In sandbox mode, ..." means the credentials belong to a Test app. Details are in the companion `prokerala-astrology-api` skill (`references/sandbox.md`).

## Make a Call

Every endpoint has a service class (see [services.md](services.md)). The pattern is always: construct with `$client`, call `process(...)`, read typed getters on the result.

```php
use Prokerala\Api\Astrology\Location;
use Prokerala\Api\Astrology\Service\Panchang;

$location = new Location(23.1765, 75.7885, 0, new DateTimeZone('Asia/Kolkata'));
$datetime = new DateTimeImmutable('2024-02-12T06:00:00+05:30');

$panchang = (new Panchang($client))->process($location, $datetime);

echo $panchang->getVaara();
foreach ($panchang->getTithi() as $tithi) {
    echo $tithi->getName();
}
```

Vedic services that support an ayanamsa default to `1` (Lahiri); call `$service->setAyanamsa(3)` (Raman) or `setAyanamsa(5)` (KP) before `process()` to change it. Several services (e.g. `Kundli`, `KundliMatching`, `MangalDosha`, `Panchang`) take a boolean `$detailed_report` flag on `process(...)` to request the `/advanced` variant of the endpoint.

## Handle Errors

```php
use Prokerala\Common\Api\Exception\AuthenticationException;
use Prokerala\Common\Api\Exception\QuotaExceededException;
use Prokerala\Common\Api\Exception\RateLimitExceededException;
use Prokerala\Common\Api\Exception\ValidationException;

try {
    $result = (new Kundli($client))->process($location, $datetime);
} catch (ValidationException $e) {
    // 400: fix input; the exception carries the per-field error list
} catch (AuthenticationException $e) {
    // 401: check CLIENT_ID / CLIENT_SECRET
} catch (QuotaExceededException $e) {
    // 403: out of API credits
} catch (RateLimitExceededException $e) {
    // 429: back off and retry later
}
```

## Runnable Examples

The SDK repository root contains runnable example scripts (`kundli.php`, `panchang.php`, `kundli-matching.php`, `chart.php`, ...) that bootstrap a client via `prepend.inc.php` and print full result trees. Copy the closest example when starting a new integration.

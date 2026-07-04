# Maintainer Guide

Use this guide when modifying `prokerala/astrology-sdk` itself (adding endpoints, changing result classes, or touching shared client code). For consuming the SDK, see [getting-started.md](getting-started.md).

## Repository Shape

- `src/Common/Api`: shared authentication, HTTP client, exceptions, and client traits.
- `src/Api/Astrology`: Vedic astrology services, result objects, transformers, locations, and shared traits.
- `src/Api/Astrology/Western`: western astrology services and result objects.
- `src/Api/Horoscope`: daily horoscope and love horoscope services.
- `src/Api/Numerology`: Pythagorean and Chaldean numerology services/results.
- `src/Api/Calendar`: calendar API service/results.
- `tests`: PHPUnit integration tests that instantiate real services and call the API.
- top-level `*.php` files: runnable examples for SDK consumers.

## Core Patterns

- Keep public SDK changes aligned with existing namespaces under `Prokerala\Api\...`.
- Services are small `final class` wrappers with:
  - `ClientAwareTrait`
  - a protected `$slug` matching the API path without `/v2`
  - a `Transformer<ResultClass>` field
  - a `process(...)` method that builds query parameters, calls `$this->apiClient->process($this->slug, $parameters)`, asserts `\stdClass`, and transforms `$apiResponse->data`.
- Use `Location::getCoordinates()` for API parameters named `coordinates` or `profile[coordinates]`.
- Format date/time inputs with `$datetime->format('c')`.
- Keep language parameters as `string $la = 'en'` when the API operation supports localization.
- Use existing service traits when relevant:
  - `AyanamsaAwareTrait` for Vedic operations that accept `ayanamsa`.
  - `TimeZoneAwareTrait` for operations that accept timezone-specific inputs.
- Result classes should implement `ResultInterface` and use `RawResponseTrait` when they represent API response data.
- Constructor parameter names in result classes must map to snake_case response keys. The transformer converts camelCase constructor parameter names to snake_case API fields.
- Add PHPDoc `@param Type[] $name` and `@return Type[]` annotations for arrays of nested result objects; the transformer relies on constructor PHPDoc to create nested objects.
- Prefer immutable typed properties and explicit getters. Preserve existing style in the surrounding package, even where older files omit `declare(strict_types=1)`.

## API Documentation Cross-Reference

When adding or changing an endpoint, cross-check the companion API skill `prokerala-astrology-api`:

1. Read its `SKILL.md`.
2. Open the matching file in `references/resources/` to find the operation.
3. Open the referenced operation file under `references/operations/`.
4. Open referenced schema files under `references/schemas/` for response object fields.

Map API operation details into SDK code this way:

- Operation path -> service `$slug`.
- Query parameters -> `process(...)` arguments and `$parameters` keys.
- Response schema -> result classes and nested result classes.
- Enum/string option lists -> constants class only if the SDK already has a nearby equivalent; otherwise keep string parameters as existing services do.

## Testing And Validation

Run checks from the SDK repository root.

- Install dependencies when needed: `composer install`.
- Static analysis: `vendor/bin/phpstan analyse`.
- Coding style dry run: `vendor/bin/php-cs-fixer fix --dry-run --diff`.
- Full coding style fix: `vendor/bin/php-cs-fixer fix`.
- Full test suite: `vendor/bin/phpunit`.
- Targeted test: `vendor/bin/phpunit tests/path/to/Test.php`.

The PHPUnit tests call the live API through OAuth. Run them only when `CLIENT_ID` and `CLIENT_SECRET` are available in the environment. Without credentials, prefer PHPStan, CS Fixer dry runs, and targeted syntax checks such as `php -l path/to/file.php`.

## Change Workflow

1. Locate an existing service/result/test that matches the domain and copy its structure.
2. Cross-check API operation and schema docs before inventing paths, parameter names, or response fields.
3. Add or update result classes before wiring the service transformer.
4. Add or update a focused PHPUnit test following the matching package's existing integration-test style.
5. Update top-level examples only when the public usage flow changes or a new endpoint needs a consumer-facing sample.
6. Run the narrowest meaningful checks first, then broader checks if the change touches shared transformer/client behavior.

## Common Pitfalls

- Do not pass latitude and longitude separately when nearby SDK services pass `coordinates`.
- Do not rename result constructor parameters casually; constructor names define response-field mapping.
- Do not remove PHPDoc array element types from result constructors.
- Do not hand-roll HTTP requests in services; all API calls go through `Prokerala\Common\Api\Client`.
- Do not add runtime dependencies when an existing PSR interface or current dependency already covers the need.
- Do not assume PHPUnit failures are code regressions if OAuth credentials are missing.

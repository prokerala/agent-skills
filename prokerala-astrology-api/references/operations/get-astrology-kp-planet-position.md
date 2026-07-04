# GET /astrology/kp-planet-position

**Resource:** [KP Astrology](../resources/KP-Astrology.md)
**Summary:** KP Planet Position
**Operation ID:** `get-astrology-kp-planet-position`

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |

## Request Body

No request body schema is defined in the OpenAPI spec.

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[KpAstrologyResponse](../schemas/Kp/KpAstrologyResponse.md)

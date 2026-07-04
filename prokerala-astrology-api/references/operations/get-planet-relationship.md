# GET /astrology/planet-relationship

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Planet Relationship
**Operation ID:** `get-planet-relationship`

planet relationship

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[PlanetRelationshipResponse](../schemas/Planet/PlanetRelationshipResponse.md)

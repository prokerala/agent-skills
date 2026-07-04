# GET /astrology/ashtakavarga

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Ashtakavarga
**Operation ID:** `get-ashtagavarga`

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `planet` | query | string | Yes | sun `0`, moon `1`, mercury `2`, venus `3`, mars `4`, jupiter `5`, saturn `6` |
| `la` | query | string | No | Enum `en` `ta` `ml` `hi` <br>Choose language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[AshtakavargaResponse](../schemas/Ashtakavarga/AshtakavargaResponse.md)

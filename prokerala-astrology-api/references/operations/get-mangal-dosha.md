# GET /astrology/mangal-dosha

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Mangal Dosha
**Operation ID:** `get-mangal-dosha`

Check a persons kundli has mangal dosha.

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `la` | query | string | No | Enum `en` `ta` `ml` `hi` <br>Choose language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[MangalDoshaResponse](../schemas/Mangal/MangalDoshaResponse.md)

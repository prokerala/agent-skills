# GET /astrology/kundli/advanced

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Detailed Kundli
**Operation ID:** `get-kundli-advanced`

Get detailed kundli with dasha periods and mangal dosha details

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `la` | query | string | No | Enum `en` `ta` `ml` `hi` <br>Choose language |
| `year_length` | query | number | No | Default value `1`(365.25 days per year). Choose the value `1` for using 365.25 days per year or `0` for 360 days per year |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[KundliAdvancedResponse](../schemas/Kundli/KundliAdvancedResponse.md)

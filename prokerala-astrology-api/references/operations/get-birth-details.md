# GET /astrology/birth-details

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Birth Details
**Operation ID:** `get-birth-details`

Get nakshatra and birth details

To know more about nakshatra and corresponding name of nakshatras in Malayalam, Tamil, Telugu and Hindi along with their meanings. [Click Here To Read](https://www.prokerala.com/astrology/nakshatra/)

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

[BirthDetailsResponse](../schemas/Birth/BirthDetailsResponse.md)

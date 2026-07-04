# GET /astrology/papasamyam-check

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Papasamyam Check
**Operation ID:** `get-papasamyam-check`

Get Papasamyam Marriage compatability

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `girl_coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `girl_dob` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `boy_coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `boy_dob` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `la` | query | string | No | Enum `en` `ta` `ml` `hi` <br>Choose language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[PapaSamyamCheckResponse](../schemas/Papa/PapaSamyamCheckResponse.md)

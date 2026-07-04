# GET /astrology/porutham

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Porutham
**Operation ID:** `get-porutham`

Get kerala and tamil nadu style marriage match making

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `girl_coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `girl_dob` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `boy_coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `boy_dob` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `system` | query | string | Yes | Enum `tamil` `kerala` <br>Choose a system for match making. For Tamil Nadu style use `tamil` and for Kerala style use `kerala` |
| `la` | query | string | No | Choose language from `en`, `ta` and `ml` |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[PoruthamResponse](../schemas/Porutham/PoruthamResponse.md)

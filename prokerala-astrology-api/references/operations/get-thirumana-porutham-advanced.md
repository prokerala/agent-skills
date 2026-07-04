# GET /astrology/thirumana-porutham/advanced

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Detailed Thirumana Porutham
**Operation ID:** `get-thirumana-porutham-advanced`

Get detailed thirumana porutham details

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `girl_nakshatra` | query | integer | Yes | Nakshatra id of girl. |
| `girl_nakshatra_pada` | query | integer | Yes | Nakshatra pada of girl. |
| `boy_nakshatra` | query | integer | Yes | Nakshatra id of boy. |
| `boy_nakshatra_pada` | query | integer | Yes | Nakshatra pada of boy. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[ThirumanaPoruthamAdvancedResponse](../schemas/Thirumana/ThirumanaPoruthamAdvancedResponse.md)

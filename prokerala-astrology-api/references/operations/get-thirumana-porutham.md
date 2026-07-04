# GET /astrology/thirumana-porutham

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Thirumana Porutham
**Operation ID:** `get-thirumana-porutham`

Get tamil nadu style nakshatra and rasi porutham for marriage matching

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

[ThirumanaPoruthamResponse](../schemas/Thirumana/ThirumanaPoruthamResponse.md)

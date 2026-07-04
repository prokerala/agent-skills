# GET /astrology/nakshatra-porutham/advanced

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Detailed Nakshatra Porutham
**Operation ID:** `get-nakshatra-porutham-advanced`

Get detailed nakshatra porutham

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

[NakshatraPoruthamAdvancedResponse](../schemas/Nakshatra/NakshatraPoruthamAdvancedResponse.md)

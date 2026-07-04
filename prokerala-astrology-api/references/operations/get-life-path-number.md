# GET /numerology/life-path-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Life Path Number
**Operation ID:** `get-life-path-number`

Life Path Number

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[LifePathNumber](../schemas/Life/LifePathNumber.md)

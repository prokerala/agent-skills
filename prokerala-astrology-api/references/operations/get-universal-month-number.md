# GET /numerology/universal-month-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Universal Month Number
**Operation ID:** `get-universal-month-number`

/numerology/universal-month-number

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

[UniversalMonthNumberResponse](../schemas/Universal/UniversalMonthNumberResponse.md)

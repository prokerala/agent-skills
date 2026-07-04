# GET /numerology/universal-year-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Universal Year Number
**Operation ID:** `get-universal-year-number`

/numerology/universal-year-number

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

[UniversalYearNumberResponse](../schemas/Universal/UniversalYearNumberResponse.md)

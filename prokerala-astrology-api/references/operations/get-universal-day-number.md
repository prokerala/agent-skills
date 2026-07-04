# GET /numerology/universal-day-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Universal Day Number
**Operation ID:** `get-universal-day-number`

/numerology/universal-day-number

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

[UniversalDayNumberResponse](../schemas/Universal/UniversalDayNumberResponse.md)

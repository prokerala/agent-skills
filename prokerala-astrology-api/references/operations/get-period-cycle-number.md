# GET /numerology/period-cycle-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Period Cycle Number
**Operation ID:** `get-period-cycle-number`

Period Cycle Number

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

[PeriodCycleNumberResponse](../schemas/Period/PeriodCycleNumberResponse.md)

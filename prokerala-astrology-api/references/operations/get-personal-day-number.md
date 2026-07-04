# GET /numerology/personal-day-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Personal Day Number
**Operation ID:** `get-personal-day-number`

/numerology/personal-day-number

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `reference_year` | query | number | Yes | Enter the years in int (eg: 2022) |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[PersonalDayNumberResponse](../schemas/Personal/PersonalDayNumberResponse.md)

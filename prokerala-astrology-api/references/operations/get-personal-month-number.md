# GET /numerology/personal-month-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Personal Month Number
**Operation ID:** `get-personal-month-number`

/numerology/personal-month-number

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

[PersonalMonthNumberResponse](../schemas/Personal/PersonalMonthNumberResponse.md)

# GET /numerology/personal-year-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Personal Year number
**Operation ID:** `get-personal-year-number`

/numerology/personal-year-number

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

[PersonalYearNumberResponse](../schemas/Personal/PersonalYearNumberResponse.md)

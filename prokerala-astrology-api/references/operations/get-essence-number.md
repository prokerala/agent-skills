# GET /numerology/essence-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Essence Number
**Operation ID:** `get-essence-number`

Essence Number

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `first_name` | query | string | Yes | Enter your first name |
| `middle_name` | query | string | No | Enter Middle Name |
| `last_name` | query | string | Yes | Enter last Name |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `reference_year` | query | number | Yes | Enter the years in int (eg: 2022) |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[EssenceNumberResponse](../schemas/Essence/EssenceNumberResponse.md)

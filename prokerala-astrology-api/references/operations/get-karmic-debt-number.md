# GET /numerology/karmic-debt-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Karmic Debt Number
**Operation ID:** `get-karmic-debt-number`

karmic-debt-number

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `first_name` | query | string | Yes | Enter your first name |
| `middle_name` | query | string | No | Enter Middle Name |
| `last_name` | query | string | Yes | Enter last Name |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[KarmicDeptNumberResponse](../schemas/Karmic/KarmicDeptNumberResponse.md)

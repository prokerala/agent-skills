# GET /numerology/birthday-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Birthday Number
**Operation ID:** `get`

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

[BirthdayNumberResponse](../schemas/Birthday/BirthdayNumberResponse.md)

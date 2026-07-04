# GET /numerology/chaldean/birth-number

**Resource:** [Chaldean Numerology](../resources/Chaldean-Numerology.md)
**Summary:** Birth Number
**Operation ID:** `get-chaldean-birth-number`

/numerology/chaldean/birth-number

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

[ChaldeanBirthNumberResponse](../schemas/Chaldean/ChaldeanBirthNumberResponse.md)

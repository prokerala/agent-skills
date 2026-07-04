# GET /numerology/chaldean/life-path-number

**Resource:** [Chaldean Numerology](../resources/Chaldean-Numerology.md)
**Summary:** Life path Number
**Operation ID:** `get-chaldean-lifepath-number`

/numerology/chaldean/lifepath-number

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

[ChaldeanLifePathNumberResponse](../schemas/Chaldean/ChaldeanLifePathNumberResponse.md)

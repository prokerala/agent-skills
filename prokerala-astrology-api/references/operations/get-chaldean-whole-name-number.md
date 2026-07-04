# GET /numerology/chaldean/whole-name-number

**Resource:** [Chaldean Numerology](../resources/Chaldean-Numerology.md)
**Summary:** Whole Name Number
**Operation ID:** `get-chaldean-whole-name-number`

/numerology/chaldean-whole-name-number

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `first_name` | query | string | Yes | Enter your first name |
| `middle_name` | query | string | No | Enter Middle Name |
| `last_name` | query | string | Yes | Enter last Name |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[ChaldeanWholeNameNumberResponse](../schemas/Chaldean/ChaldeanWholeNameNumberResponse.md)

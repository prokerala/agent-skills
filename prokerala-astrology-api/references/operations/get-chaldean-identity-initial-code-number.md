# GET /numerology/chaldean/identity-initial-code-number

**Resource:** [Chaldean Numerology](../resources/Chaldean-Numerology.md)
**Summary:** Identity Initial Code Number
**Operation ID:** `get-chaldean-identity-inital-code-number`

/numerology/chaldean/identity-inital-code-number

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

[ChaldeanIdentityInitialCodeNumberResponse](../schemas/Chaldean/ChaldeanIdentityInitialCodeNumberResponse.md)

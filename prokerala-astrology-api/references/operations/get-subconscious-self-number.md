# GET /numerology/subconscious-self-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Subconscious Self Number
**Operation ID:** `get-subconscious-self-number`

/numerology/subconscious-self-number

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

[SubconsciousSelfNumberResponse](../schemas/Subconscious/SubconsciousSelfNumberResponse.md)

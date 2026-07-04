# GET /numerology/transit-cycle-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Transit Cycle Number
**Operation ID:** `get-transit-cycle-number`

/numerology/transit-cycle-number

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

[TransitCycleNumberResponse](../schemas/Transit/TransitCycleNumberResponse.md)

# GET /numerology/cornerstone-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Cornerstone Number
**Operation ID:** `get-cornerstone-number`

Corner Stone Number

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

[CornerstoneNumberResponse](../schemas/Cornerstone/CornerstoneNumberResponse.md)

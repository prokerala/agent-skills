# GET /numerology/planes-of-expression-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Planes Of Expression Number
**Operation ID:** `get-planes-of-expression-number`

planes-of-expression-number

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

[PlanesOfExpressionNumberResponse](../schemas/Planes/PlanesOfExpressionNumberResponse.md)

# GET /numerology/expression-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Expression Number
**Operation ID:** `get-expression-number`

Numerology Expression Number

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

[ExpressionNumberResponse](../schemas/Expression/ExpressionNumberResponse.md)

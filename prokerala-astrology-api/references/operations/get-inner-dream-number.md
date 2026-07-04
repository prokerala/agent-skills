# GET /numerology/inner-dream-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Inner Dream Number
**Operation ID:** `get-inner-dream-number`

Inner Dream Number

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `first_name` | query | string | Yes | Enter your first name |
| `middle_name` | query | string | No | Enter Middle Name |
| `last_name` | query | string | Yes | Enter last Name |
| `additional_vowel` | query | boolean | Yes | Count Y and W as additional vowels when `true`. The API rejects requests that omit this parameter, so always send `true` or `false` explicitly. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[InnerDreamNumberResponse](../schemas/Inner/InnerDreamNumberResponse.md)

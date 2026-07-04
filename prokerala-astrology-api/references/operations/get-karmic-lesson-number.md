# GET /numerology/karmic-lesson-number

**Resource:** [Numerology](../resources/Numerology.md)
**Summary:** Karmic Lesson Number
**Operation ID:** `get-karmic-lesson-number`

karmic-lesson-number

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

[KarmicLessonNumberResponse](../schemas/Karmic/KarmicLessonNumberResponse.md)

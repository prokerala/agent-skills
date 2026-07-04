# POST /astrology/batch-compatibility

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Batch Compatibility
**Operation ID:** `get-batch-compatibility`

The <b>Batch Marriage Compatibility API </b> allows you to compare one primary profile against up to 500 profiles in a single request. Credits are calculated in blocks of <b>50 profiles</b>, meaning that matching up to 50 profiles consumes <b>2,000 credits</b>. Even if you match fewer than 50 profiles—such as 40—the cost remains 2,000 credits. If the request includes more than 50 profiles, credits increase in multiples of 50; for example, matching <b> 55 profiles </b> uses <b>4,000 credits</b>, and matching <b>500 profiles </b>requires a total of <b>20,000 credits</b>.

## Request Body

**Content Types:** `text/html`

## text/html Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `profile` | [BatchProfile](../schemas/Batch/BatchProfile.md)[] | Yes |  |
| `match_profiles` | [BatchProfile](../schemas/Batch/BatchProfile.md)[] | Yes |  |
| `compatibility_system` | string | Yes | Enum: `kerala` `tamil` `guna-milan` |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[BatchCompatibilityResponse](../schemas/Batch/BatchCompatibilityResponse.md)

# GET /astrology/kp-chart

**Resource:** [KP Astrology](../resources/KP-Astrology.md)
**Summary:** KP Chart
**Operation ID:** `get-astrology-kp-chart`

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `chart_style` | query | string | Yes | Enum `north-indian` `south-indian` `east-indian` <br> Choose type of chart style |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |

## Request Body

No request body schema is defined in the OpenAPI spec.

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `image/svg+xml`

**Success Response Schema:**

[ChartResult](../schemas/Chart/ChartResult.md)

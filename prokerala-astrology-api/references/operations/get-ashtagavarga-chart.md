# GET /astrology/ashtakavarga-chart

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Ashtakavarga Chart
**Operation ID:** `get-ashtagavarga-chart`

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `planet` | query | string | Yes | sun `0`, moon `1`, mercury `2`, venus `3`, mars `4`, jupiter `5`, saturn `6` |
| `chart_style` | query | string | Yes | Enum `north-indian` `south-indian` `east-indian` <br> Choose type of chart style |
| `type` | query | string | No | chart type `prastara`, `trikona`, `ekaadhipatya`  default value is `prastara` |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `image/svg+xml`

**Success Response Schema:**

[ChartResult](../schemas/Chart/ChartResult.md)

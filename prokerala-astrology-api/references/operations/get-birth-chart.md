# GET /astrology/chart

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Chart
**Operation ID:** `get-birth-chart`

Get planet positions of different charts in kundli

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `chart_type` | query | string | Yes | Enum `rasi` `navamsa` `lagna` `trimsamsa` `drekkana` `chaturthamsa` `dasamsa` `ashtamsa` `dwadasamsa` `shodasamsa` `hora` `akshavedamsa` `shashtyamsa` `panchamsa` `khavedamsa` `saptavimsamsa` `shashtamsa` `chaturvimsamsa` `saptamsa` `vimsamsa` `upagraha` `bhava` `sun` `moon`  <br> Choose type of chart to get planet position of the chart |
| `chart_style` | query | string | Yes | Enum `north-indian` `south-indian` `east-indian` <br> Choose type of chart style |
| `format` | query | string | Yes | Choose your chart output format. Only `svg` is supported at present. |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |
| `upagraha_position` | query | string | No | values for upagraha position are `start`, `middle` and `end`. default value is `middle` |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `image/svg+xml`

**Success Response Schema:**

[ChartResult](../schemas/Chart/ChartResult.md)

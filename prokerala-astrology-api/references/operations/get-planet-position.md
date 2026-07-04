# GET /astrology/planet-position

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Planet Position
**Operation ID:** `get-planet-position`

Get planet position

Parameter `planets` is optional and by default the api returns all planets excluding `URANUS`, `NEPTUNE` and `PLUTO`.

List of Planets and their ID's

|Planet Name|Planet ID|
|---|---|
|SUN|0|
|MOON|1|
|MERCURY|2|
|VENUS|3|
|MARS|4|
|JUPITER|5|
|SATURN|6|
|URANUS|7|
|NEPTUNE|8|
|PLUTO|9|
|ASCENDANT|100|
|RAHU|101|
|KETU|102|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `planets` | query | string | No | (Optional) Coma separted list of planet ids. eg: `0,1,100,102` |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[PlanetPositionResponse](../schemas/Planet/PlanetPositionResponse.md)

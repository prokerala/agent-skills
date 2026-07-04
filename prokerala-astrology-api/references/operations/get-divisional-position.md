# GET /astrology/divisional-planet-position

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Divisional Planet Position
**Operation ID:** `get-divisional-position`

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `chart_type` | query | string | Yes | divisional chart type `lagna`, `navamsa`, `trimsamsa`, `drekkana`, `chaturthamsa`, `dasamsa`, `ashtamsa`, `dwadasamsa`, `shodasamsa`, `hora`, `akshavedamsa`, `shashtyamsa`, `panchamsa`, `khavedamsa`, `saptavimsamsa`, `shashtamsa`, `chaturvimsamsa`, `saptamsa`, `vimsamsa` |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[DivisionalResponse](../schemas/Divisional/DivisionalResponse.md)

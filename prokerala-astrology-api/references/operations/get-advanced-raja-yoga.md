# GET /astrology/raja-yoga

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Advanced Raja Yoga
**Operation ID:** `get-advanced-raja-yoga`

List of Influence Name and their Influence ID's

|Influence Name|Influence ID|
|---|---|
|Wealth|1|
|Finance|2|
|Marriage|3|
|Love|4|
|Education|5|
|Mother|6|
|Family|7|
|Appearance|8|
|Personality|9|
|Health|10|
|Intelligence|11|
|Career|12|
|Courage|13|

List of Natue and Natue ID's

|Natue|Natue ID|
|---|---|
|Positive|1|
|Negative|2|
|Both|3|

List of Category and Category ID's

|Category Name|Category ID|
|---|---|
|Raja|1|
|Nabhasa|2|
|Solar|3|
|Lunar|4|
|Career|5|
|Conjunction|6|
|Health|7|
|Wealth|8|
|Progeny|9|
|Penury|10|
|Parriage|11|
|Specialraja|12|
|Major|13|
|Parivartana|14|
|Dainya|15|
|Khala|16|
|Maha|17|
|Akriti|18|
|Asraya|19|
|Dala|20|
|Sankhya|21|
|Arishta|22|
|Other|23|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `la` | query | string | No | Enum `en` `ta` `ml` `hi` <br>Choose language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[AdvancedRajaYogaResponse](../schemas/Advanced/AdvancedRajaYogaResponse.md)

# GET /astrology/chandrashtama-periods

**Resource:** [Horoscope](../resources/Horoscope.md)
**Summary:** Chandrashtama Periods
**Operation ID:** `get-chandrashtama-periods`

The `datetime` and `rasi` parameters are optional, but one of them must be provided. If only `rasi` is given, the `is_peak` value will be set to `null`, as the `datetime` parameter is necessary for calculating the peak nakshatra.

List of Rasis and their ID's

|Rasi Name|Rasi ID|
|---|---|
|MESHA|0|
|VRISHABHA|1|
|MITHUNA|2|
|KARKA|3|
|SIMHA|4|
|KANYA|5|
|TULA|6|
|VRISCHIKA|7|
|DHANU|8|
|MAKARA|9|
|KUMBHA|10|
|MEENA|11|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `ayanamsa` | query | number | Yes | The value for ayanamsa parameter is `1` for Lahiri, `3` for Raman, `5` for KP astrology and `45` for kp-new. |
| `coordinates` | query | string | Yes | Location is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `year` | query | string | Yes | Year for which the Chandrashtama periods are to be calculated. e.g: `2022`. |
| `datetime` | query | string | No | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `rasi` | query | string | No | Rasi represents the janma rasi and must must be from the specified list. e.g: `0` for MESHA) |
| `output_timezone` | query | string | No | Timezone defines the desired timezone for output formatting. It must be a valid IANA timezone identifier. e.g: `Asia/Kolkata`. |
| `la` | query | string | No | Enum `en` `hi` `ta` `te` `ml` <br>Choose Language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[ChandrashtamaPeriodResponse](../schemas/Chandrashtama/ChandrashtamaPeriodResponse.md)

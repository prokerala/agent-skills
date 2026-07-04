# GET /horoscope/daily

**Resource:** [Prediction](../resources/Prediction.md)
**Summary:** Daily Prediction
**Operation ID:** `get-horoscope-daily`

The Daily Prediction API provides a daily prediction for the specified zodiac sign. By providing the zodiac sign and the date for which the prediction is needed, the API returns a general, basic prediction for that sign on the given day. If you need more detailed daily predictions, you can use our Advanced Daily Prediction API.

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `sign` | query | string | Yes | Enum `aries` `taurus` `gemini` `cancer` `leo` `virgo` `libra` `scorpio` `sagittarius` `capricorn` `aquarius` `pisces` <br>Choose the zodiac sign |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[DailyHoroscopeResponse](../schemas/Daily/DailyHoroscopeResponse.md)

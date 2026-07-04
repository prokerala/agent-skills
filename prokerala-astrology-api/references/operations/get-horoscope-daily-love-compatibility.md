# GET /horoscope/daily/love-compatibility

**Resource:** [Prediction](../resources/Prediction.md)
**Summary:** Daily Love Prediction
**Operation ID:** `get-horoscope-daily-love-compatibility`

This API provides daily compatibility predictions between two zodiac signs, allowing users to request a forecast based on two given signs for a specified date. You can request a specific compatibility prediction between two zodiac signs, such as Aries and Taurus, or get predictions between a single sign and multiple zodiac signs and vice versa, as well as retrieve predictions for all 12 zodiac signs in a single request. Here is the table providing a structured view of daily predictions based on sign pairings.

Here’s a breakdown of how credits are calculated for different combinations:

|#|Sign One|Sign Two|Credits Calculation|Total Credits|
|-|-----|---------------|------------------|-------------|
|1|aries|aries|1 * 1 * 100|100|
|2|aries,taurus|gemini|2 * 1 * 100|200|
|3|aries,taurus|gemini,cancer|2 * 2 * 100|400|
|4|all|aries|12 * 1 * 100|1200|
|5|all|all|12 * 12 * 100|14400|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `sign_one` | query | string | Yes | Enum `all` `aries` `taurus` `gemini` `cancer` `leo` `virgo` `libra` `scorpio` `sagittarius` `capricorn` `aquarius` `pisces` <br>Choose the zodiac sign |
| `sign_two` | query | string | Yes | Enum `all` `aries` `taurus` `gemini` `cancer` `leo` `virgo` `libra` `scorpio` `sagittarius` `capricorn` `aquarius` `pisces` <br>Choose the zodiac sign |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[DailyLoveHoroscopeResponse](../schemas/Daily/DailyLoveHoroscopeResponse.md)

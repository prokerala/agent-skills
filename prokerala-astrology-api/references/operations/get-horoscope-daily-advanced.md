# GET /horoscope/daily/advanced

**Resource:** [Prediction](../resources/Prediction.md)
**Summary:** Advanced Daily Prediction
**Operation ID:** `get-horoscope-daily-advanced`

This API endpoint provides detailed daily predictions for each zodiac sign, returning predictions for General, Career, Love, and Health based on the requested type. You can request a specific type  for the required zodiac signs or get all predictions for all 12 signs in a single request. Here is the table providing a structured view of daily predictions based on sign pairings.

Here’s a breakdown of how credits are calculated for different combinations:

|#|Signs|Horoscope Types|Credits Calculation|Total Credits|
|-|-----|---------------|------------------|-------------|
|1|aries|general|1 * 1 * 250|250|
|2|aries,taurus|general|2 * 1 * 250|500|
|3|aries,taurus|general,love|2 * 2 * 250|1000|
|4|all|general|12 * 1 * 250|3000|
|5|all|all|12 * 4 * 250|12000|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `datetime` | query | string | Yes | ISO 8601 date-time with the correct timezone offset; see [common-pitfalls.md](../common-pitfalls.md). |
| `sign` | query | string | Yes | Enum `all` `aries` `taurus` `gemini` `cancer` `leo` `virgo` `libra` `scorpio` `sagittarius` `capricorn` `aquarius` `pisces` <br>Choose the zodiac sign |
| `type` | query | string | Yes | Enum `all` `general` `health` `career` `love` <br>Choose the prediction type |

## Request Body

No request body schema is defined in the OpenAPI spec.

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[DailyHoroscopeAdvancedResponse](../schemas/Daily/DailyHoroscopeAdvancedResponse.md)

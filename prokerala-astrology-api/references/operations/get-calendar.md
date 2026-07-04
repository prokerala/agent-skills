# GET /calendar

**Resource:** [Calendar](../resources/Calendar.md)
**Summary:** Calendar
**Operation ID:** `get-calendar`

|#|Calendar|Value|Supported Languages|
|---|---|---|---|
|1|Tamil|`tamil`|`en` `ta`|
|2|Malayalam|`malayalam`|`en` `ml`|
|3|Shaka Samwat|`shaka-samvat`|`en` `ml` `hi` `ta` `te`|
|4|Vikram Samwat|`vikram-samvat`|`en` `ml` `hi` `ta` `te`|
|5|Amanta|`amanta`|`en` `ml` `hi` `ta` `te`|
|6|Purnimanta|`purnimanta`|`en` `ml` `hi` `ta` `te`|
|7|Hijri|`hijri`|`en`|
|8|Gujarati|`gujarati`|`en` `gu`|
|9|Bengali|`bengali`|`en` `bn`|
|10|Lunar|`lunar`|`en` `ml` `hi` `ta` `te`|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `date` | query | string | Yes | Date should be in ISO 8601 extended format YYYY-MM-DD eg: 2004-02-12. |
| `calendar` | query | string | Yes | Enum `tamil` `malayalam` `amanta` `purnimanta` `shaka-samvat` `vikram-samvat` `hijri` `gujarati` `bengali` `lunar` <br>Choose the calendar type |
| `la` | query | string | No | Enum `en` `ta` `te` `ml` `gu` `bn` <br> Choose language |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[CalendarDateResponse](../schemas/Calendar/CalendarDateResponse.md)

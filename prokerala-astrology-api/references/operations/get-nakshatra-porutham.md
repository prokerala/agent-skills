# GET /astrology/nakshatra-porutham

**Resource:** [Marriage Matching](../resources/Marriage-Matching.md)
**Summary:** Nakshatra Porutham
**Operation ID:** `get-nakshatra-porutham`

|#|Nakshatra|
|---|---|
|0|Ashwini|
|1|Bharani|
|2|Krithika|
|3|Rohini|
|4|Mrigashirsha|
|5|Ardra|
|6|Punarvasu|
|7|Pushya|
|8|Ashlesha|
|9|Magha|
|10|PurvaPhalguni|
|11|UttaraPhalguni|
|12|Hasta|
|13|Chitra|
|14|Swati|
|15|Vishaka|
|16|Anuradha|
|17|Jyeshta|
|18|Moola|
|19|PurvaAshadha|
|20|UttaraAshadha|
|21|Shravana|
|22|Dhanishta|
|23|Shatabhisha|
|24|PurvaBhadrapada|
|25|UttaraBhadrapada|
|26|Revati|

Get Kerala style nakshatra and rasi porutham for marriage matching

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `girl_nakshatra` | query | integer | Yes | Nakshatra id of girl. |
| `girl_nakshatra_pada` | query | integer | Yes | Nakshatra pada of girl. |
| `boy_nakshatra` | query | integer | Yes | Nakshatra id of boy. |
| `boy_nakshatra_pada` | query | integer | Yes | Nakshatra pada of boy. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/json`

**Success Response Schema:**

[NakshatraPoruthamResponse](../schemas/Nakshatra/NakshatraPoruthamResponse.md)

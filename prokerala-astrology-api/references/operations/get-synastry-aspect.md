# GET /astrology/synastry-aspect-chart

**Resource:** [Western Astrology](../resources/Western-Astrology.md)
**Summary:** Synastry Aspect Chart
**Operation ID:** `get-synastry-aspect`

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `primary_profile` | query | object | Yes | See [`primary_profile` object fields](#primary_profile-object-fields) below. |
| `secondary_profile` | query | object | Yes | See [`secondary_profile` object fields](#secondary_profile-object-fields) below. |
| `house_system` | query | string | Yes | Choose house system `placidus`, `koch`, `whole-sign`, `equal-house`, `m-house`, `porphyrius`, `regiomontanus`, `campanus` |
| `chart_type` | query | string | Yes | Default is `zodiac-contact-chart`. Values are `zodiac-contact-chart`, `house-contact-chart`. |
| `orb` | query | string | Yes | Default orb is `default`. Values are `default` and `exact` |
| `birth_time_rectification` | query | string | No | Default value is `flat-chart`. Possible values are `flat-chart` and `true-sunrise-chart` |
| `aspect_filter` | query | string | No | Default is `major` aspects. Values `all`, `major`, `minor` |
| `ayanamsa` | query | integer | No | The default value of ayanamsa is `0`, which uses Tropical (Western) planetary positions. For Sidereal positions, select `1` for Lahiri, `3` for Raman, or `5` for KP Astrology. |

### `primary_profile` object fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `primary_profile[datetime]` | string | Yes | Date and time should be in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ eg:`2004-02-12T15:19:21+05:30`. |
| `primary_profile[coordinates]` | string | Yes | Coordinates is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `primary_profile[birth_time_unknown]` | boolean | No | Default is `false`. If exact time of birth is unknown value is `true`. |

The Field column shows the bracket-notation query key. For array fields, increment the index for each entry (`[0]`, `[1]`, ...).

### `secondary_profile` object fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `secondary_profile[datetime]` | string | Yes | Date and time should be in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ eg:`2004-02-12T15:19:21+05:30`. |
| `secondary_profile[coordinates]` | string | Yes | Coordinates is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `secondary_profile[birth_time_unknown]` | boolean | No | Default is `false`. If exact time of birth is unknown value is `true`. |

The Field column shows the bracket-notation query key. For array fields, increment the index for each entry (`[0]`, `[1]`, ...).

**Object Query Encoding:** This operation has object query parameters. Encode nested fields with bracket notation, for example `profile[datetime]` or `primary_profile[coordinates]`. See [query-parameters.md](../query-parameters.md).

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `image/svg+xml`

**Success Response Schema:**

[ChartResult](../schemas/Chart/ChartResult.md)

# GET /report/compatibility-reading/instant

**Resource:** [PDF Report](../resources/PDF-Report.md)
**Summary:** Compatibility Report PDF
**Operation ID:** `get-compatibility-reading-report`

Modules available for the Compatibility Reading Report are given below. Each module supports a specific set of languages, and if the requested language is not available for a module, it will automatically fall back to a default language `English`. You can set the `la` attribute in the query parameters under `options -> report -> la` to specify your preferred language for the report.

<h3>Vedic Astrology Compatibility Report Modules</h3>

|#|Module Name|Code|Options|Credit|Supported Languages|
|---|---|---|---|---|---|
|1|Kundali Matching|`kundli-matching`|NA|2000|`en` `hi`|
|2|Kerala Porutham|`porutham-kerala`|NA|2000|`en` `ml`|
|3|Tamil Porutham|`porutham-tamil`|NA|2000|`en` `ta`|
|4|Birth Details|`birth-details`|`chart_style`|2000|`en` `ml` `hi` `ta`|
|5|Mangal Dosha|`mangal-dosha`|NA|2000|`en` `ml` `hi` `ta`|
|6|Papa Samaya|`papa-samaya`|NA|2000|`en` `ml` `ta`|
|7|Dasha Sandi|`dasha-sandi`|NA|2000|`en` `ml` `ta`|

<div style="background-color: antiquewhite; padding: 5px; margin-bottom:10px">
    <p style="margin: 5px; font-size:13px; color:red"> If the requested language is not available for a module, it will automatically fall back to the default language, `en`. </p>
</div>

Module specific options

|#|Option|Value|Mandatory|Description|
|---|---|---|---|---|
|1|`chart_style`|One of `north-indian` `south-indian` `east-indian`|Mandatory, No Default Value|A chart style is the different methods of dividing the astrological houses on a birth chart|
|2|`compatibility_system`|One of `kerala` `tamil` `guna-milan`|Mandatory, No Default Value|Result summary change depending on the compatibility system selected|

<h3>Western Astrology Compatibility Report</h3>

|#|Module Name|Code|Options|Credit|Sample PDF|
|---|---|---|---|---|---|
|1|Synastry Report|`synastry-report`|`house_system` `chart_type`|100000|[📄 PDF](https://api.prokerala.com/pdf-reports#synastry-report)|

Module specific options

|#|Option|Value|Default|Description|
|---|---|---|---|---|
|1|`house_system`|<ul><li>placidus `0`</li><li>koch `1`</li><li>whole sign `2`</li><li>equal house `3`</li><li>equal mc `4`</li><li>porphyrius `5`</li><li>regiomontanus `6`</li><li>campanus `7`</li></ul>|`0`|By default, `0` is selected.|
|2|`chart_type`|<ul><li>Zodiac `zodiac`</li><li>House `house`</li></ul>|None|Mandatory parameter. Required Chart Type.|

<h3>Vedic Astrology Compatibility Reports </h3>

|#|Module Name|Code|Options|Credit|Supported Languages|
|---|---|---|---|---|---|
|1|Guna Milan Report|`guna-milan-report`|`chart_style`|15000|`en` `hi` `te`|
|2|Porutham Report|`porutham-report`|`compatibility_system` `chart_style`|15000|`en` `ml` `ta`|

Module specific options

|#|Option|Value|Mandatory|Description|
|---|---|---|---|---|
|1|`chart_style`|One of `north-indian` `south-indian` `east-indian`|Mandatory, No Default Value|A chart style is the different methods of dividing the astrological houses on a birth chart|
|2|`compatibility_system`|One of `kerala` `tamil`|Mandatory, No Default Value|Result summary change depending on the compatibility system selected|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `input` | query | object | Yes | See [`input` object fields](#input-object-fields) below. |
| `options` | query | object | Yes | See [`options` object fields](#options-object-fields) below. |

## Request Body

No request body schema is defined in the OpenAPI spec.

### `input` object fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `input[first_person]` | object | Yes |  |
| `input[first_person][first_name]` | string | Yes | Add persons first name |
| `input[first_person][middle_name]` | string | No | Add persons middle name (Optional) |
| `input[first_person][last_name]` | string | No | Add persons last name (Optional) |
| `input[first_person][gender]` | string | Yes | First person should be always male Enum: `male` |
| `input[first_person][datetime]` | string | Yes | Date and time should be in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ eg:`2004-02-12T15:19:21+05:30`. |
| `input[first_person][coordinates]` | string | Yes | Coordinates is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `input[first_person][place]` | string | Yes | Place name of the birth eg: London, UK |
| `input[second_person]` | object | Yes |  |
| `input[second_person][first_name]` | string | Yes | Add persons first name |
| `input[second_person][middle_name]` | string | No | Add persons middle name (Optional) |
| `input[second_person][last_name]` | string | No | Add persons last name (Optional) |
| `input[second_person][gender]` | string | Yes | Second person should be always female Enum: `female` |
| `input[second_person][datetime]` | string | Yes | Date and time should be in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ eg:`2004-02-12T15:19:21+05:30`. |
| `input[second_person][coordinates]` | string | Yes | Coordinates is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `input[second_person][place]` | string | Yes | Place name of the birth eg: London, UK |

The Field column shows the bracket-notation query key. For array fields, increment the index for each entry (`[0]`, `[1]`, ...).

### `options` object fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `options[modules]` | array | Yes | Select modules available for the report generation. |
| `options[modules][0][name]` | string | Yes | Choose the module name from the module list |
| `options[modules][0][options]` | object | No | Options for the selected module, e.g. `options[modules][0][options][chart_style]=north-indian`. Required for modules whose module list entry has options; omit the key entirely for modules without options (an empty value is rejected with a 400). |
| `options[template]` | object | Yes |  |
| `options[template][style]` | string | Yes | Select a report style. Currently supported styles are `basic`. For more style options <a href=#templates-options>Click here</a> |
| `options[template][footer]` | string | Yes | Example: <a href="https://www.prokerala.com">prokerala.com</a> \| 📧 support@prokerala.com \| Call Now: 1800 425 0053 |
| `options[report]` | object | Yes |  |
| `options[report][name]` | string | Yes | You can give your custom report name here. Example: `Mangal Dosha Report` |
| `options[report][caption]` | string | Yes | You can give your custom custom caption for your report here. |
| `options[report][brand_name]` | string | Yes | You branding detail will go here. |
| `options[report][la]` | string | No | You can set your report language using the `la` attribute, which accepts locales like `en`, `ta`, `ml`, and `hi`. Reports are made up of modules, and each module supports a specific set of languages. If the requested language is not available for a module, it will automatically fall back to a default language, typically `en`. |

The Field column shows the bracket-notation query key. For array fields, increment the index for each entry (`[0]`, `[1]`, ...).

**Object Query Encoding:** This operation has object query parameters. Encode nested fields with bracket notation, for example `profile[datetime]` or `primary_profile[coordinates]`. See [query-parameters.md](../query-parameters.md).

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |

**Response Content Types:** `application/pdf`

**Success Response Schema:**

`object`

# GET /report/personal-reading/instant

**Resource:** [PDF Report](../resources/PDF-Report.md)
**Summary:** Personal Reading Report PDF
**Operation ID:** `get-personal-reading-report`

Modules available for the Personal Reading Report are given below. Each module supports a specific set of languages, and if the requested language is not available for a module, it will automatically fall back to a default language `English`. You can set the `la` attribute in the query parameters under `options -> report -> la` to specify your preferred language for the report.

<h3>Vedic Astrology Report Modules</h3>

|#|Module Name|Code|Options|Supported Languages|Credit|
|---|---|---|---|---|---|
|1|Birth Details| `birth-details` |NA|`en` `hi` `ml` `ta`|1000|
|2|Rasi & Navamsa Chart|`chart`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|3|Planet Positions|`planet-position`|NA|`en` `hi` `ml` `ta`|1000|
|4|Mangal Dosha Report|`mangal-dosha`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|5|Yoga Details|`yoga-details`|NA|`en` `hi` `ml` `ta`|1000|
|6|Kaal sarp Dosha Report|`kaal-sarp-dosha`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|7|Sade Sati Report|`sade-sati`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|8|Shodasavarga Charts|`shodashvarga-chart`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|9|Vimsottari Dasha & Sub Periods|`dasa-periods`|`antardasha`<br>`pratyantardasha`<br>`year_length`|`en` `hi` `ml` `ta`|1000|
|10|Papa Dosha|`papa-dosha`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|11|Planet Relationship|`planet-relationship`|NA|`en` `hi` `ml` `ta`|500|
|12|Ashtakavarga|`ashtakavarga-chart`|`chart_style`<br>`planet`|`en` `hi` `ml` `ta`|500|
|13|Sarvashtakavarga|`sarvashtakavarga-chart`|`chart_style`<br>`planet_ashtakavarga`|`en` `hi` `ml` `ta`|2000|
|14|Sudharshanachakra|`sudharshanachakra-chart`|NA|`en` `hi` `ml` `ta`|500|
|15|Shodasavarga Table|`shodashvarga-table`|`chart_style`|`en` `hi` `ml` `ta`|1000|
|16|Shadbala Table|`shadbala-table`|NA|`en` `hi` `ml` `ta`|1000|
|17|Nabhasa Yoga|`nabhasa-yogas`|NA|`en`|1000|
|18|Chandra Yoga|`chandra-yogas`|NA|`en`|1000|
|19|Surya Yoga|`surya-yogas`|NA|`en`|1000|
|20|Favourable Periods|`favourable-periods`|`period_type`|`en` `hi` `ml` `ta`|1000|

<div style="background-color: antiquewhite; padding: 5px; margin-bottom:10px">
    <p style="margin: 5px; font-size:13px; color:red"> If the requested language is not available for a module, it will automatically fall back to the default language, `en`. </p>
</div>

Module specific options

|#|Option|Allowed Value|Default|Description|
|---|---|---|---|---|
|1|`chart_style`| <ul><li>`north-indian`</li><li>`south-indian`</li><li>`east-indian`</li></ul>|None|Mandatory parameter. Style for included charts.|
|2|`antardasha`|<ul><li>`all`</li><li>`current_mahadasha`</li><li>`none`</li></ul>|`all`|Antardasha periods to include in report.|
|3|`pratyantardasha`|<ul><li>`all`</li><li>`current_mahadasha`</li><li>`current_antardasha`</li><li>`none`</li></ul>|`all`|Pratyantardasha periods to include in report.|
|4|`planet`|<ul><li>sun `0`</li><li>moon `1`</li><li>mercury `2`</li><li>venus `3`</li><li>mars `4`</li><li>jupiter `5`</li><li>saturn `6`</li></ul>|None|Mandatory parameter. planet id.|
|5|`planet_ashtakavarga`|<ul><li>`all`</li><li>`none`</li></ul>|`all`| disable individual Ashtakavarga in report.|
|6|`period_type`|<ul><li>`marriage`</li></ul>|None|Mandatory parameter. Favourable Period Types.|
|7|`year_length`|<ul><li>Solar Year `1`</li><li>Ideal Year `0`</li></ul>|`1`|The value `1` for Solar Year (365.25 days per year), `0` for Ideal Year(360 days per year). |

<h3>Vedic Transit Report Modules</h3>

|#|Module Name|Code|Options|Credit|
|---|---|---|---|---|
|1|Planet Transit Kakshya|`transit-planet-kakshya`|`transit_planet`|75000|
|2|Planet Transit Nakshatra|`transit-planet-nakshatra`|`transit_planet`|20000|
|3|Planet Transit Prediction|`transit-planet-prediction`|`transit_planet`<br>`chart_style`|30000|

Vedic Transit Report module specific options

|#|Option|Allowed Value|Default|Description|
|---|---|---|---|---|
|1|`transit_planet`|<ul><li>jupiter `5`</li></ul>|None|filter planets for transit report.|
|2|`chart_style`| <ul><li>`north-indian`</li><li>`south-indian`</li><li>`east-indian`</li></ul>|None|Mandatory parameter. Style for included charts.|

<h3>Western Astrology Report Modules</h3>

|#|Module Name|Code|Options|Credit|
|---|---|---|---|---|
|1|Natal and Aspect Chart|`natal-chart`|`house_system`|2000|
|2|Planet Positions & House Cusps|`western-planet-position`|`house_system`|1000|
|3|Planet Aspect Details|`natal-aspect-details`|`house_system`|1000|
|4|Planet In Sign Interpretation|`planet-sign-interpretation`|`house_system` `planet`|2000|
|5|Basic House Interpretation|`basic-house-interpretation`|`house_system` `house`|2000|

Module specific options

|#|Option|Allowed Value|Default|Description|
|---|---|---|---|---|
|1|`house_system`|<ul><li>placidus `0`</li><li>koch `1`</li><li>whole sign `2`</li><li>equal house `3`</li><li>equal mc `4`</li><li>porphyrius `5`</li><li>regiomontanus `6`</li><li>campanus `7`</li></ul>|`0`|By default, `0` is selected.|
|2|`planet`|<ul><li>sun `0`</li><li>moon `1`</li><li>mercury `2`</li><li>venus `3`</li><li>mars `4`</li><li>jupiter `5`</li><li>saturn `6`</li><li>uranus `7`</li><li>neptune `8`</li><li>pluto `9`</li><li>ascendant `100`</li></ul>|None|Mandatory parameter. Required Planets.|
|3|`house`|<ul><li>First `0`</li><li>Second `1`</li><li>third `2`</li><li>Fourth `3`</li><li>Fifth `4`</li><li>Sixth `5`</li><li>Seventh `6`</li><li>Eighth `7`</li><li>Ninth `8`</li><li>Tenth `9`</li><li>Eleventh `10`</li><li>Twelfth `11`</li></ul>|None|Mandatory parameter. Required House.|

<h3 id='templates-options'>Template Options</h3>

|#|Option|Value|
|---|---|---|
|1|style|<ui><li>For Vedic Astrology Available Style are : `basic` , `vedic-astro-green`</li><li>For Western Astrology Available Style are : `basic` , `western-astro-blue`</li></ul>|
|2|footer|<ui><li> You can customize the footer as follows</li><li>Example: <a href="https://www.prokerala.com">prokerala.com</a> &#124; 📧 support@prokerala.com &#124; Call Now: 1800 425 0053</li></ui>|

<h3>Comprehensive Vedic Astrology Reports</h3>

|#|Module Name|Code|Options|Credit|Supported Languages|Sample PDF|
|---|---|---|---|---|---|---|
|1|Saturn Transit|`saturn-transit`|`chart_style`|350000|`en` `hi` `ml` `ta`|[📄 PDF](https://api.prokerala.com/pdf-reports#saturn)|
|2|Rahu-Ketu Transit|`rahu-ketu-transit`|`chart_style` `year`|200000|`en` `hi` `ml` `ta`|[📄 PDF](https://api.prokerala.com/pdf-reports#rahu-ketu)|
|3|Jupiter Transit|`jupiter-transit`|`chart_style` `year`|350000|`en` `hi` `ta` `ml`|[📄 PDF](https://api.prokerala.com/pdf-reports#jupiter)|
|4|Year Guide|`year-guide`|`chart_style` `year`|300000|`en` `hi` `ml` `ta`|[📄 PDF](https://api.prokerala.com/pdf-reports#year-guide)|
|5|Single Page Horoscope|`single-page-horoscope`|`chart_style`|6000|`en` `hi` `ml` `ta`|[📄 PDF](https://api.prokerala.com/pdf-reports#single-page-horoscope)|

Module specific options

|#|Option|Value|Default|Description|
|---|---|---|---|---|
|1|`chart_style`|One of `north-indian` `south-indian` `east-indian`|Mandatory, No Default Value|A chart style is the different methods of dividing the astrological houses on a birth chart|
|2|`year`|`YYYY`  eg. 2025|By default, current year (eg. 2025) is selected|Selecting a year is optional and will default to the current year. Next year becomes selectable from September onwards (e.g., 2026 available from September 2025). The PDF is generated for the selected year (defaults to the current year if none is chosen).|

<h3>Comprehensive Western Astrology Report</h3>

|#|Module Name|Code|Options|Credit|Sample PDF|
|---|---|---|---|---|---|
|1|Basic Natal Report|`basic-natal-report`|`house_system`|20000|[📄 PDF](https://api.prokerala.com/pdf-reports#natal-report)|

|#|Option|Value|Default|Description|
|---|---|---|---|---|
|1|`house_system`|<ul><li>placidus `0`</li><li>koch `1`</li><li>whole sign `2`</li><li>equal house `3`</li><li>equal mc `4`</li><li>porphyrius `5`</li><li>regiomontanus `6`</li><li>campanus `7`</li></ul>|`0`|By default, `0` is selected.|

## Parameters

| Name | In | Type | Required | Description |
|------|----|------|----------|-------------|
| `input` | query | object | Yes | See [`input` object fields](#input-object-fields) below. |
| `options` | query | object | Yes | See [`options` object fields](#options-object-fields) below. |

### `input` object fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `input[first_name]` | string | Yes | Add persons first name |
| `input[middle_name]` | string | No | Add persons middle name (Optional) |
| `input[last_name]` | string | No | Add persons last name (Optional) |
| `input[gender]` | string | Yes | Enum: `male` `female` |
| `input[datetime]` | string | Yes | Date and time should be in ISO 8601 format YYYY-MM-DDTHH:MM:SSZ eg:`2004-02-12T15:19:21+05:30`. |
| `input[coordinates]` | string | Yes | Coordinates is accepted in the form of latitude and longitude eg: `10.214747,78.097626`. |
| `input[place]` | string | Yes | Place name of the birth eg: London, UK |

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

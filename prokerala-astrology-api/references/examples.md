# Examples

These examples show safe query encoding. Replace `<access_token>` with a valid OAuth token.

## Kundli

```bash
curl --get "https://api.prokerala.com/v2/astrology/kundli" \
  -H "Authorization: Bearer <access_token>" \
  --data-urlencode "ayanamsa=1" \
  --data-urlencode "coordinates=23.1765,75.7885" \
  --data-urlencode "datetime=2022-03-17T10:50:40+00:00"
```

## Panchang

```bash
curl --get "https://api.prokerala.com/v2/astrology/panchang" \
  -H "Authorization: Bearer <access_token>" \
  --data-urlencode "ayanamsa=1" \
  --data-urlencode "coordinates=10.214747,78.097626" \
  --data-urlencode "datetime=2004-02-12T15:19:21+05:30" \
  --data-urlencode "la=en"
```

## Kundli Matching

```bash
curl --get "https://api.prokerala.com/v2/astrology/kundli-matching" \
  -H "Authorization: Bearer <access_token>" \
  --data-urlencode "ayanamsa=1" \
  --data-urlencode "girl_coordinates=10.214747,78.097626" \
  --data-urlencode "girl_dob=2004-02-12T15:19:21+05:30" \
  --data-urlencode "boy_coordinates=9.9312,76.2673" \
  --data-urlencode "boy_dob=2001-08-20T06:45:00+05:30" \
  --data-urlencode "la=en"
```

## Western Natal Chart

Use bracket notation for the `profile` object.

```bash
curl --get "https://api.prokerala.com/v2/astrology/natal-chart" \
  -H "Authorization: Bearer <access_token>" \
  --data-urlencode "profile[datetime]=2004-02-12T15:19:21+05:30" \
  --data-urlencode "profile[coordinates]=10.214747,78.097626" \
  --data-urlencode "profile[birth_time_unknown]=false" \
  --data-urlencode "house_system=placidus" \
  --data-urlencode "orb=default" \
  --data-urlencode "birth_time_rectification=flat-chart" \
  --data-urlencode "aspect_filter=major" \
  --data-urlencode "la=en"
```

## Personal Reading PDF

PDF report endpoints return binary PDF content. Use bracket notation for nested `input` and `options` values. `birth-details` takes no module options; for modules that do (e.g. `chart`), pass them as `options[modules][0][options][chart_style]=north-indian`. Never send an empty `options[modules][0][options]=` — it fails validation.

```bash
curl --get "https://api.prokerala.com/v2/report/personal-reading/instant" \
  -H "Authorization: Bearer <access_token>" \
  --data-urlencode "input[first_name]=John" \
  --data-urlencode "input[gender]=male" \
  --data-urlencode "input[datetime]=2004-02-12T15:19:21+05:30" \
  --data-urlencode "input[coordinates]=10.214747,78.097626" \
  --data-urlencode "input[place]=London, UK" \
  --data-urlencode "options[modules][0][name]=birth-details" \
  --data-urlencode "options[template][style]=basic" \
  --data-urlencode "options[template][footer]=example.com" \
  --data-urlencode "options[report][name]=Birth Report" \
  --data-urlencode "options[report][caption]=Prepared for John" \
  --data-urlencode "options[report][brand_name]=Example Astrology" \
  --output personal-reading.pdf
```

## Node.js Query Builder

```js
const params = new URLSearchParams();
params.set("ayanamsa", "1");
params.set("coordinates", "23.1765,75.7885");
params.set("datetime", "2022-03-17T10:50:40+00:00");

const response = await fetch(
  `https://api.prokerala.com/v2/astrology/kundli?${params}`,
  { headers: { Authorization: `Bearer ${accessToken}` } },
);
```

For object query parameters:

```js
const params = new URLSearchParams();
params.set("profile[datetime]", "2004-02-12T15:19:21+05:30");
params.set("profile[coordinates]", "10.214747,78.097626");
params.set("profile[birth_time_unknown]", "false");
params.set("house_system", "placidus");
params.set("orb", "default");
params.set("birth_time_rectification", "flat-chart");
params.set("aspect_filter", "major");
```

`URLSearchParams` percent-encodes `+` as `%2B` when producing the query string.

# Query Parameter Encoding

Use this guide when an operation includes object-like query parameters such as `profile`, `primary_profile`, `secondary_profile`, `input`, or `options`.

## Scalar Parameters

Pass scalar query parameters normally:

```text
ayanamsa=1
coordinates=23.1765,75.7885
datetime=2022-03-17T10:50:40%2B05:30
```

Use your HTTP client or URL builder to percent-encode values. Do not concatenate raw date-time strings containing `+`.

## Boolean Parameters

Boolean parameters accept exactly four values: `true`, `false`, `1`, `0`. Anything else — including capitalized `True` (what Python's `str(True)` produces) — is rejected with a 400 `Invalid value` error. Serialize booleans explicitly to lowercase strings instead of relying on the language's default string conversion:

```text
profile[birth_time_unknown]=true   # ok
profile[birth_time_unknown]=1      # ok
profile[birth_time_unknown]=True   # 400: Value should be a boolean
```

## Object Parameters

Encode object query parameters with bracket notation. This matches the official PHP SDK request shape.

For a `profile` object:

```text
profile[datetime]=2004-02-12T15:19:21%2B05:30
profile[coordinates]=10.214747,78.097626
profile[birth_time_unknown]=false
```

For two-profile western astrology endpoints:

```text
primary_profile[datetime]=2004-02-12T15:19:21%2B05:30
primary_profile[coordinates]=10.214747,78.097626
primary_profile[birth_time_unknown]=false
secondary_profile[datetime]=2001-08-20T06:45:00%2B05:30
secondary_profile[coordinates]=9.9312,76.2673
secondary_profile[birth_time_unknown]=false
```

When writing examples, prefer HTTP client helpers that encode query strings, such as `URLSearchParams`, `--data-urlencode`, or the language's form/query encoder.

## Report Parameters

PDF report endpoints use nested `input` and `options` query objects. Encode them recursively with bracket notation:

```text
input[first_name]=John
input[gender]=male
input[datetime]=2004-02-12T15:19:21%2B05:30
input[coordinates]=10.214747,78.097626
input[place]=London, UK
options[modules][0][name]=chart
options[modules][0][options][chart_style]=north-indian
options[modules][1][name]=birth-details
options[template][style]=basic
options[template][footer]=example.com
options[report][name]=Birth Report
options[report][caption]=Prepared for John
options[report][brand_name]=Example Astrology
```

If a module takes no options (its Options column is `NA` in the module list), omit its `options` key entirely — sending an empty value such as `options[modules][0][options]=` is rejected with a 400 (`"Module options should be an object (map)"`).

If a client cannot build nested query strings reliably, use an SDK or a query-string library that supports bracket notation.

## Avoid

- Do not send object parameters as `[object Object]`.
- Do not JSON-stringify object query parameters unless the endpoint specifically documents JSON strings.
- Do not flatten multiple profile objects into unprefixed `datetime` and `coordinates` keys.
- Do not hand-build URLs with raw `+` in date-time offsets.

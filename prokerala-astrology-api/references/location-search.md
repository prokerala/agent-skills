# Location Search (obtaining coordinates and timezone)

Almost every endpoint requires `coordinates` (`latitude,longitude`) and a datetime with the
correct timezone offset. Use this guide when a developer needs to turn a user-entered place
name into those values.

Prokerala provides a first-party, client-side JavaScript widget that autocompletes place names
and returns latitude, longitude, and IANA timezone. This is the easiest way to collect location
input in a form. The same search is available as a direct API (see below) if you'd rather build
your own autocomplete UI or resolve place names on the server.

## Widget

- Script: `https://client-api.prokerala.com/static/js/location.min.js`
- Add the class `prokerala-location-input` to any text input you want to turn into a location
  search field.
- The script injects two hidden fields into the input's form — `coordinates` and `timezone` —
  and updates them with the values of the location the user selects.
- The widget forces the user to pick a suggestion from the dropdown (it sets a custom validity
  error on free-typed input), so submitted coordinates always resolve to a real place.

## Setup

1. Register at https://api.prokerala.com and create a client to get a **client ID**.
2. Whitelist your website's domain as an **Authorized JavaScript Origin** in the dashboard.
3. Include the script and initialise it, passing the client ID.

```html
<form>
  <input type="text" class="prokerala-location-input" placeholder="Birth place">
  <!-- hidden `coordinates` and `timezone` fields are injected automatically -->
</form>

<script>
const PK_API_CLIENT_ID = 'your-client-id';

(function () {
  function loadScript(cb) {
    const script = document.createElement('script');
    script.src = 'https://client-api.prokerala.com/static/js/location.min.js';
    script.async = 1;
    script.onload = cb;
    document.head.appendChild(script);
  }

  function createHidden(name) {
    const input = document.createElement('input');
    input.name = name;
    input.type = 'hidden';
    return input;
  }

  function initWidget(input) {
    const form = input.form;
    const prefix = input.dataset.locationInputPrefix || '';
    const coordinates = createHidden(prefix + 'coordinates');
    const timezone = createHidden(prefix + 'timezone');
    form.appendChild(coordinates);
    form.appendChild(timezone);

    new LocationSearch(input, function (data) {
      coordinates.value = `${data.latitude},${data.longitude}`;
      timezone.value = data.timezone;
      input.setCustomValidity('');
    }, { clientId: PK_API_CLIENT_ID, persistKey: `${prefix}loc` });

    input.addEventListener('change', function () {
      input.setCustomValidity('Please select a location from the suggestions list');
    });
  }

  loadScript(function () {
    Array.from(document.querySelectorAll('.prokerala-location-input')).forEach(initWidget);
  });
})();
</script>
```

The `LocationSearch` callback receives `data.latitude`, `data.longitude`, and `data.timezone`.
Combine `timezone` with the user's chosen date/time to build the ISO 8601 datetime the API
expects (see `common-pitfalls.md` and `query-parameters.md`).

## Multiple location fields on one form

To place more than one location input in the same form (for example a two-profile marriage
matching form), give each input a `data-location-input-prefix` so the injected hidden fields
do not collide:

```html
<input type="text" class="prokerala-location-input" data-location-input-prefix="primary_profile_">
<input type="text" class="prokerala-location-input" data-location-input-prefix="secondary_profile_">
```

This produces hidden fields such as `primary_profile_coordinates` / `primary_profile_timezone`
and `secondary_profile_coordinates` / `secondary_profile_timezone`.

## Notes

- The widget uses only the **public client ID** — this is safe to expose in the browser.
  Never put `client_secret` in browser code; it is only for the server-side OAuth token
  request (see `authentication.md`).
- Access is restricted by the Authorized JavaScript Origin whitelist, not by a secret.
- Live demo of the widget in a birth-details form: https://api.prokerala.com/demo/birth-details.php

## Location search API (unsupported)

The widget is powered by a simple location search endpoint that you can also call directly, for
example to build your own autocomplete UI or resolve place names on the server:

```text
GET https://client-api.prokerala.com/v1/location/search.json?q=<search_term>&limit=20
```

It is intended solely for use alongside Prokerala API Services — to help you collect the
`coordinates` and `timezone` that other endpoints require — not as a general-purpose geocoding
service.

- `q` — the search term (place name; partial matches work).
- `limit` — maximum number of results to return.

The response is a JSON object whose `data` is an array of **positional** arrays (not keyed
objects). Each inner array is:

```text
[ id, name, state, country, country_code, timezone, latitude, longitude ]
```

```json
{
  "status": "ok",
  "data": [
    [1264527, "Chennai", "Tamil Nadu", "India", "IN", "Asia/Kolkata", 13.0878, 80.2785]
  ]
}
```

Build the values you need from a chosen result as `coordinates = "<latitude>,<longitude>"`
(indices 6 and 7) and `timezone` from index 5.

This endpoint is unsupported: it exists to power the location search widget and is offered
as-is. Access may require authentication at some point in the future, so keep it easy to swap
out and don't rely on it for a mission-critical path. For long-term or guaranteed use, the
widget remains the supported option.

# SolarReturnPlanetPositionResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `status` | string | Yes |  |
| `data` | object | Yes |  |

## Nested Fields

### `data`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `solar_return_details` | [ChartPlanetPosition](../Chart/ChartPlanetPosition.md) | Yes |  |
| `solar_return_natal_aspects` | PlanetAspect[] | Yes |  |
| `solar_return_datetime` | [DateTime](../Date/DateTime.md) | Yes |  |
| `solar_return_year` | integer | Yes |  |


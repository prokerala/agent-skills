# TransitPlanetPositionResponse

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
| `transit_details` | [ChartPlanetPosition](../Chart/ChartPlanetPosition.md) | Yes |  |
| `transit_natal_aspects` | PlanetAspect[] | Yes |  |
| `transit_datetime` | [DateTime](../Date/DateTime.md) | Yes |  |


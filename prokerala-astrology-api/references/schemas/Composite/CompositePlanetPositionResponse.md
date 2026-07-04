# CompositePlanetPositionResponse

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
| `composite_houses` | House[] | Yes |  |
| `composite_planet_positions` | WesternPlanetPosition[] | Yes |  |
| `composite_angles` | WesternPlanetPosition[] | Yes |  |
| `composite_aspects` | PlanetAspect[] | Yes |  |
| `transit_datetime` | [DateTime](../Date/DateTime.md) | Yes |  |


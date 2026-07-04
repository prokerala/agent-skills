# ProgressionPlanetPositionResponse

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
| `progression_details` | [ChartPlanetPosition](../Chart/ChartPlanetPosition.md) | Yes |  |
| `progression_natal_aspects` | PlanetAspect[] | Yes |  |
| `progression_year` | integer | Yes |  |
| `progression_date` | string | Yes |  |


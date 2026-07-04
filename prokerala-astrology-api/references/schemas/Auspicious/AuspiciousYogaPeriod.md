# AuspiciousYogaPeriod

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | integer | Yes |  |
| `name` | string | Yes |  |
| `period` | object[] | Yes |  |

## Nested Fields

### `period`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `start` | string | Yes |  |
| `end` | string | Yes |  |
| `combination` | object[] | Yes |  |

#### `period.combination`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `type` | string | Yes |  |
| `name` | string | Yes |  |


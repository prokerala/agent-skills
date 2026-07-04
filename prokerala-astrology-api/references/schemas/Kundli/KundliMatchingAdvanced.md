# KundliMatchingAdvanced

Object representing success response for detailed Kundli Match check API query.

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `girl_info` | [GunaMilanProfileInfo](../Guna/GunaMilanProfileInfo.md) | Yes |  |
| `boy_info` | [GunaMilanProfileInfo](../Guna/GunaMilanProfileInfo.md) | Yes |  |
| `message` | [Message](../Message/Message.md) | Yes |  |
| `guna_milan` | [GunaMilanAdvanced](../Guna/GunaMilanAdvanced.md) | Yes |  |
| `girl_mangal_dosha_details` | [GunaMilanMangalDosha](../Guna/GunaMilanMangalDosha.md) | Yes |  |
| `boy_mangal_dosha_details` | [GunaMilanMangalDosha](../Guna/GunaMilanMangalDosha.md) | Yes |  |
| `exceptions` | string[] | Yes |  |


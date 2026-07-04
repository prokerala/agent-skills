# Service Catalog

All 99 service classes, grouped by namespace. Each service wraps one API endpoint; the Endpoint column is the API path (without the `/v2` prefix) used as the service's `$slug`.

For endpoint parameters and response fields, open the matching operation file in the companion `prokerala-astrology-api` skill under `../../prokerala-astrology-api/references/`.

## `Prokerala\Api\Astrology\Service`

| Service Class | Endpoint |
|---------------|----------|
| `AnandadiYoga` | `/astrology/anandadi-yoga` |
| `Ashtakavarga` | `/astrology/ashtakavarga` |
| `AshtakavargaChart` | `/astrology/ashtakavarga-chart` |
| `AuspiciousPeriod` | `/astrology/auspicious-period` |
| `AuspiciousYoga` | `/astrology/auspicious-yoga` |
| `BirthDetails` | `/astrology/birth-details` |
| `ChandraBala` | `/astrology/chandra-bala` |
| `ChandrashtamaPeriod` | `/astrology/chandrashtama-periods` |
| `Chart` | `/astrology/chart` |
| `Choghadiya` | `/astrology/choghadiya` |
| `DashaPeriod` | `/astrology/dasha-periods` |
| `DishaShool` | `/astrology/disha-shool` |
| `DivisionalPlanetPosition` | `/astrology/divisional-planet-position` |
| `GowriNallaNeram` | `/astrology/gowri-nalla-neram` |
| `Hora` | `/astrology/hora` |
| `InauspiciousPeriod` | `/astrology/inauspicious-period` |
| `KaalSarpDosha` | `/astrology/kaal-sarp-dosha` |
| `Kundli` | `/astrology/kundli` (supports `/advanced` variant via a flag) |
| `KundliMatching` | `/astrology/kundli-matching` (supports `/advanced` variant via a flag) |
| `MangalDosha` | `/astrology/mangal-dosha` (supports `/advanced` variant via a flag) |
| `NakshatraPorutham` | `/astrology/nakshatra-porutham` (supports `/advanced` variant via a flag) |
| `Panchang` | `/astrology/panchang` (supports `/advanced` variant via a flag) |
| `Papasamyam` | `/astrology/papasamyam` |
| `PapaSamyamCheck` | `/astrology/papasamyam-check` |
| `PlanetPosition` | `/astrology/planet-position` |
| `PlanetRelationship` | `/astrology/planet-relationship` |
| `Porutham` | `/astrology/porutham` (supports `/advanced` variant via a flag) |
| `Ritu` | `/astrology/ritu` |
| `SadeSati` | `/astrology/sade-sati` (supports `/advanced` variant via a flag) |
| `Sarvashtakavarga` | `/astrology/sarvashtakavarga` |
| `SarvashtakavargaChart` | `/astrology/sarvashtakavarga-chart` |
| `Solstice` | `/astrology/solstice` |
| `SudharshanachakraChart` | `/astrology/sudarshana-chakra` |
| `TaraBala` | `/astrology/tara-bala` |
| `ThirumanaPorutham` | `/astrology/thirumana-porutham` (supports `/advanced` variant via a flag) |
| `UpagrahaPosition` | `/astrology/upagraha-position` |
| `Yoga` | `/astrology/yoga` |

## `Prokerala\Api\Astrology\Western\Service\AspectCharts`

| Service Class | Endpoint |
|---------------|----------|
| `CompositeChart` | `/astrology/composite-aspect-chart` |
| `NatalChart` | `/astrology/natal-aspect-chart` |
| `ProgressionChart` | `/astrology/progression-aspect-chart` |
| `SolarReturnChart` | `/astrology/solar-return-aspect-chart` |
| `SynastryChart` | `/astrology/synastry-aspect-chart` |
| `TransitChart` | `/astrology/transit-aspect-chart` |

## `Prokerala\Api\Astrology\Western\Service\Charts`

| Service Class | Endpoint |
|---------------|----------|
| `CompositeChart` | `/astrology/composite-chart` |
| `NatalChart` | `/astrology/natal-chart` |
| `ProgressionChart` | `/astrology/progression-chart` |
| `SolarReturnChart` | `/astrology/solar-return-chart` |
| `SynastryChart` | `/astrology/synastry-chart` |
| `TransitChart` | `/astrology/transit-chart` |

## `Prokerala\Api\Astrology\Western\Service\PlanetPositions`

| Service Class | Endpoint |
|---------------|----------|
| `CompositeChart` | `/astrology/composite-planet-aspect` |
| `NatalChart` | `/astrology/natal-planet-position` |
| `ProgressionChart` | `/astrology/progression-planet-position` |
| `SolarReturnChart` | `/astrology/solar-return-planet-position` |
| `SynastryChart` | `/astrology/synastry-planet-aspect` |
| `TransitChart` | `/astrology/transit-planet-position` |

## `Prokerala\Api\Calendar\Service`

| Service Class | Endpoint |
|---------------|----------|
| `CalendarDate` | `/calendar` |

## `Prokerala\Api\Horoscope\Service`

| Service Class | Endpoint |
|---------------|----------|
| `DailyPrediction` | `/horoscope/daily` |
| `DailyPredictionAdvanced` | `/horoscope/daily/advanced` (supports `/advanced` variant via a flag) |
| `DailyLovePrediction` | `/horoscope/daily/love-compatibility` |

## `Prokerala\Api\Numerology\Service\Chaldean`

| Service Class | Endpoint |
|---------------|----------|
| `BirthNumber` | `/numerology/chaldean/birth-number` |
| `DailyNameNumber` | `/numerology/chaldean/daily-name-number` |
| `IdentityInitialCode` | `/numerology/chaldean/identity-initial-code-number` |
| `LifePathNumber` | `/numerology/chaldean/life-path-number` |
| `WholeNameNumber` | `/numerology/chaldean/whole-name-number` |

## `Prokerala\Api\Numerology\Service\Pythagorean`

| Service Class | Endpoint |
|---------------|----------|
| `AttainmentNumber` | `/numerology/attainment-number` |
| `BalanceNumber` | `/numerology/balance-number` |
| `BirthMonthNumber` | `/numerology/birth-month-number` |
| `BirthdayNumber` | `/numerology/birthday-number` |
| `BridgeNumber` | `/numerology/bridge-number` |
| `CapstoneNumber` | `/numerology/capstone-number` |
| `ChallengeNumber` | `/numerology/challenge-number` |
| `CornerstoneNumber` | `/numerology/cornerstone-number` |
| `DestinyNumber` | `/numerology/destiny-number` |
| `EssenceNumber` | `/numerology/essence-number` |
| `ExpressionNumber` | `/numerology/expression-number` |
| `HiddenPassionNumber` | `/numerology/hidden-passion-number` |
| `InclusionTable` | `/numerology/inclusion-table-number` |
| `InnerDreamNumber` | `/numerology/inner-dream-number` |
| `KarmicDebtNumber` | `/numerology/karmic-debt-number` |
| `KarmicLessonNumber` | `/numerology/karmic-lesson-number` |
| `LifeCycleNumber` | `/numerology/life-cycle-number` |
| `LifePathNumber` | `/numerology/life-path-number` |
| `MaturityNumber` | `/numerology/maturity-number` |
| `PeriodCycleNumber` | `/numerology/period-cycle-number` |
| `PersonalDayNumber` | `/numerology/personal-day-number` |
| `PersonalMonthNumber` | `/numerology/personal-month-number` |
| `PersonalYearNumber` | `/numerology/personal-year-number` |
| `PersonalityNumber` | `/numerology/personality-number` |
| `PinnacleNumber` | `/numerology/pinnacle-number` |
| `PlanesOfExpression` | `/numerology/planes-of-expression-number` |
| `RationalThoughtNumber` | `/numerology/rational-thought-number` |
| `SoulUrgeNumber` | `/numerology/soul-urge-number` |
| `SubconsciousSelfNumber` | `/numerology/subconscious-self-number` |
| `TransitNumber` | `/numerology/transit-cycle-number` |
| `UniversalDayNumber` | `/numerology/universal-day-number` |
| `UniversalMonthNumber` | `/numerology/universal-month-number` |
| `UniversalYearNumber` | `/numerology/universal-year-number` |

## `Prokerala\Api\Report\Service`

| Service Class | Endpoint |
|---------------|----------|
| `CompatibilityReport` | `/report/compatibility-reading/instant` |
| `PersonalReport` | `/report/personal-reading/instant` |

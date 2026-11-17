# Communication Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Communication |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Communication-PRD.md"](Communication-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Communication-business-rules.md"](Communication-business-rules.md), ["Communication-user-stories.md"](Communication-user-stories.md), ["Communication-workflows.md"](Communication-workflows.md), ["Communication-v1-scope.md"](versions/Communication-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Communication features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 7 | ["Communication-v1-features.md"](versions/Communication-v1-features.md) |
| V2 | Additional | R2 | 5 | ["Communication-v2-features.md"](versions/Communication-v2-features.md) |
| V3 | Later | R3 | 0 | ["Communication-v3-features.md"](versions/Communication-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Communication-PRD.md"](Communication-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Communication-business-rules.md"](Communication-business-rules.md).
4. ["Communication-workflows.md"](Communication-workflows.md).
5. ["Communication-user-stories.md"](Communication-user-stories.md).
6. ["Communication-v1-scope.md"](versions/Communication-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §6, §1 (SMS pricing) | Messaging & SMS engine, auto-SMS trigger list |
| EximusEdu brochure pp. 40–46 (SMS section) | SMS screenshots, pricing 1.25৳/0.95৳ |

# 6. Open Research Items


- SMS gateway operators for Bangladesh (masking/non-masking): business agreement + integration decision (ADR territory).
- Banned-word list source and language coverage — needs a content policy decision.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Auto-SMS triggers are catalogued here even when the triggering event lives in another module (attendance → HR/Portals, dues → Fees).
- Notice publication (notices/events) is Foundation (FND-NOT-*), not Communication.

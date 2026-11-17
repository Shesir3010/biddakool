# Operations Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Operations |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Operations-PRD.md"](Operations-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Operations-business-rules.md"](Operations-business-rules.md), ["Operations-user-stories.md"](Operations-user-stories.md), ["Operations-workflows.md"](Operations-workflows.md), ["Operations-v1-scope.md"](versions/Operations-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Operations features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 0 | ["Operations-v1-features.md"](versions/Operations-v1-features.md) |
| V2 | Additional | R2 | 10 | ["Operations-v2-features.md"](versions/Operations-v2-features.md) |
| V3 | Later | R3 | 0 | ["Operations-v3-features.md"](versions/Operations-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)


| ID | Feature | Reason |
|---|---|---|
| OPS-TRA-001 | Transport module — routes, vehicles, transport fees | Deferred by product owner: folder reserved, build-out planned later |

# 4. Reading Order

1. ["Operations-PRD.md"](Operations-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Operations-business-rules.md"](Operations-business-rules.md).
4. ["Operations-workflows.md"](Operations-workflows.md).
5. ["Operations-user-stories.md"](Operations-user-stories.md).
6. ["Operations-v1-scope.md"](versions/Operations-v1-scope.md) - V1 build order and status.

# 5. Research Needs

# 9. Research Needs (Open)

- Hostel fee integration: room-type fees should appear as fee heads (FEE-PLN-001) — boundary to draw in Operations PRD.
- Residential status (hostel) feeds Students (STU-PRF-007) and Exams result segmentation (EXA-RPT-006) — cross-module rules needed.

# 6. Open Research Items


- Hostel fee integration: room-type fees should appear as fee heads (FEE-PLN-001) — boundary to draw in Operations PRD.
- Residential status (hostel) feeds Students (STU-PRF-007) and Exams result segmentation (EXA-RPT-006) — cross-module rules needed.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Transport is parked per product-owner instruction ("make the folder for now, work later"); the ID above is reserved so no future feature reuses it.

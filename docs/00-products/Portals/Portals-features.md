# Portals Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Portals |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Portals-PRD.md"](Portals-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Portals-business-rules.md"](Portals-business-rules.md), ["Portals-user-stories.md"](Portals-user-stories.md), ["Portals-workflows.md"](Portals-workflows.md), ["Portals-v1-scope.md"](versions/Portals-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Portals features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 17 | ["Portals-v1-features.md"](versions/Portals-v1-features.md) |
| V2 | Additional | R2 | 5 | ["Portals-v2-features.md"](versions/Portals-v2-features.md) |
| V3 | Later | R3 | 2 | ["Portals-v3-features.md"](versions/Portals-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Portals-PRD.md"](Portals-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Portals-business-rules.md"](Portals-business-rules.md).
4. ["Portals-workflows.md"](Portals-workflows.md).
5. ["Portals-user-stories.md"](Portals-user-stories.md).
6. ["Portals-v1-scope.md"](versions/Portals-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §8, §9, §3.2 (online results) | Student/guardian portal, teacher panel, public result lookup |
| EximusEdu brochure pp. 47–53 | Portal & teacher-panel chapters |

# 6. Open Research Items


- Screen/module lock parental control is a low-confidence brochure read — validate intent (screen-time control vs. app-module restriction) before design.
- Guardian login model: single login for all children (COM-MSG-002/POR-STU-010) vs per-child credentials — needs a product decision.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Public result lookup capability lives in Exams (EXA-RES-001); the portal entry above is the surface.
- Login credential delivery via SMS is COM-AUT-003.
- Portals never define new capabilities — a portal feature that implies a capability must reference the home module's feature ID.

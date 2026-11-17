# Foundation Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Foundation |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Foundation-PRD.md"](Foundation-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Foundation-business-rules.md"](Foundation-business-rules.md), ["Foundation-user-stories.md"](Foundation-user-stories.md), ["Foundation-workflows.md"](Foundation-workflows.md), ["Foundation-v1-scope.md"](versions/Foundation-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Foundation features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 11 | ["Foundation-v1-features.md"](versions/Foundation-v1-features.md) |
| V2 | Additional | R2 | 4 | ["Foundation-v2-features.md"](versions/Foundation-v2-features.md) |
| V3 | Later | R3 | 0 | ["Foundation-v3-features.md"](versions/Foundation-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Foundation-PRD.md"](Foundation-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Foundation-business-rules.md"](Foundation-business-rules.md).
4. ["Foundation-workflows.md"](Foundation-workflows.md).
5. ["Foundation-user-stories.md"](Foundation-user-stories.md).
6. ["Foundation-v1-scope.md"](versions/Foundation-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §1, §3.7, §12 | Structure dimensions, permissions, passwords, notices/events, committees, system setup submenu |
| EximusEdu brochure pp. 9, 32–33, 58–59 | Structure dimensions, notices & events, admin menus |

# 6. Open Research Items


- Custom Forms engine scope was inferred from a sidebar item — validate with product owner before R2 build.
- Custom Reports: brochure shows template-based reports; boundary between report templates and Exams report cards needs the PRD to draw.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Login-credential delivery via SMS is catalogued in Communication (COM-AUT-003), not here.
- Notices/Events sat under the Academics menu in the benchmark product but belong to Foundation per the approved module map.

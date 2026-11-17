# Students Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Students |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Students-PRD.md"](Students-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Students-business-rules.md"](Students-business-rules.md), ["Students-user-stories.md"](Students-user-stories.md), ["Students-workflows.md"](Students-workflows.md), ["Students-v1-scope.md"](versions/Students-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Students features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 14 | ["Students-v1-features.md"](versions/Students-v1-features.md) |
| V2 | Additional | R2 | 5 | ["Students-v2-features.md"](versions/Students-v2-features.md) |
| V3 | Later | R3 | 0 | ["Students-v3-features.md"](versions/Students-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)


| ID | Feature | Reason |
|---|---|---|
| STU-MEM-001 | Membership (সদস্যতা) records | TOC-only in benchmark brochure — scope never shown; validate before committing |

# 4. Reading Order

1. ["Students-PRD.md"](Students-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Students-business-rules.md"](Students-business-rules.md).
4. ["Students-workflows.md"](Students-workflows.md).
5. ["Students-user-stories.md"](Students-user-stories.md).
6. ["Students-v1-scope.md"](versions/Students-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §2.1, §2.3, §2.6, §2.7, §2.8, §2.9 | Admission flow, profiles, leaves, certificates, ID cards, membership ⚠︎ |
| EximusEdu brochure pp. 11–21 | HR chapter (student-side features) |

# 6. Open Research Items


- Membership (সদস্যতা): TOC-only — confirm intended scope with a domain expert before parking decision becomes permanent.
- TC/testimonial wording must follow Bangla education-board conventions — validate templates at build time.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Guardian records live inside student profiles (one-family model), not as separate login entities; portal login behavior is catalogued in Portals (POR-STU-010).
- Teacher/staff ID cards are catalogued in HR (HR-DOC-001).
- Hifz-specific student columns (department/group/group-teacher) are Parked globally with the madrasa vertical.

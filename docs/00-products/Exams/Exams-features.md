# Exams Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Exams |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Exams-PRD.md"](Exams-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Exams-business-rules.md"](Exams-business-rules.md), ["Exams-user-stories.md"](Exams-user-stories.md), ["Exams-workflows.md"](Exams-workflows.md), ["Exams-v1-scope.md"](versions/Exams-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Exams features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 17 | ["Exams-v1-features.md"](versions/Exams-v1-features.md) |
| V2 | Additional | R2 | 5 | ["Exams-v2-features.md"](versions/Exams-v2-features.md) |
| V3 | Later | R3 | 0 | ["Exams-v3-features.md"](versions/Exams-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Exams-PRD.md"](Exams-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Exams-business-rules.md"](Exams-business-rules.md).
4. ["Exams-workflows.md"](Exams-workflows.md).
5. ["Exams-user-stories.md"](Exams-user-stories.md).
6. ["Exams-v1-scope.md"](versions/Exams-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §3.1, §3.2, §14 | Exams framework, results & report cards (flagship), 11-template configurability gallery |
| EximusEdu brochure pp. 22–33, 58–64 | Academics chapter, report-card gallery appendix |

# 6. Open Research Items


- The 11 verified report-card templates (benchmark appendix) prove configurability depth — the designer engine boundary between R1 standard cards and R2 designer must be drawn in the Exams PRD.
- Dual grading scales (5.0 GPA + letter) on one sheet: confirm exact arithmetic rules with a domain reviewer.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Medical-edition exam mechanics (Card-Items, OSPE/Traditional practical, Prof. Eligibility, POC results) are Parked globally with the Medical vertical.
- Hifz sabaq/mashq exam structures are Parked with the madrasa vertical.
- Admission-exam operations are referenced from Students (STU-ADM-004); exam scheduling engine is shared.

# Academics Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Academics |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Academics-PRD.md"](Academics-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Academics-business-rules.md"](Academics-business-rules.md), ["Academics-user-stories.md"](Academics-user-stories.md), ["Academics-workflows.md"](Academics-workflows.md), ["Academics-v1-scope.md"](versions/Academics-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Academics features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 6 | ["Academics-v1-features.md"](versions/Academics-v1-features.md) |
| V2 | Additional | R2 | 3 | ["Academics-v2-features.md"](versions/Academics-v2-features.md) |
| V3 | Later | R3 | 5 | ["Academics-v3-features.md"](versions/Academics-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Academics-PRD.md"](Academics-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Academics-business-rules.md"](Academics-business-rules.md).
4. ["Academics-workflows.md"](Academics-workflows.md).
5. ["Academics-user-stories.md"](Academics-user-stories.md).
6. ["Academics-v1-scope.md"](versions/Academics-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §3.3–§3.6, §11 | Routines, lessons & evaluation, courses, quizzes/notes/syllabus, teacher evaluation |
| EximusEdu brochure pp. 22–33 | Academics chapter |

# 6. Open Research Items


- In-app annotation tooling (zoom/pen/shapes/eraser) is a heavy R3 capability — assess build-vs-integrate when the time comes.
- Live-class delivery (which meeting platform) is a stack decision — belongs in `01-architecture/adr/`, not here.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Routine is R1 (not R2 as in the first phase sketch) because student/teacher dashboards show "today's & tomorrow's classes" — an R1 portal dependency.
- Exam-side academics (marks, report cards) live in Exams, not Academics.

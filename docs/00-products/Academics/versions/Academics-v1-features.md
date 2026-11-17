# Academics Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Academics |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Academics-PRD.md"](../Academics-PRD.md) (source of truth), ["Academics-features.md"](../Academics-features.md) (module index), ["Academics-v1-scope.md"](Academics-v1-scope.md), ["Academics-business-rules.md"](../Academics-business-rules.md), ["Academics-user-stories.md"](../Academics-user-stories.md), ["Academics-workflows.md"](../Academics-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Academics V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Academics-features.md"](../Academics-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** ACA-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** what teaching runs on daily — timetables, lessons, notes, syllabus. Pulled into V1 because the R1 student/teacher dashboards surface them directly.

### Routines (ACA-ROU)

| ID | Feature | Priority |
|---|---|---|
| ACA-ROU-001 | Class routine — day×period grid with times/tiffin break, color-coded cells (subject + teacher initials + room), teachers table + weekly class counts | Must Have |
| ACA-ROU-002 | Teacher routines — individual (weekly load totals), all-teachers grid, per-day filtered view | Should Have |

### Lessons (ACA-LES)

| ID | Feature | Priority |
|---|---|---|
| ACA-LES-001 | Daily lessons — Class Work + Home Work per subject/date (admin + teacher entry, CRUD, print/PDF/Excel) | Must Have |

### Content (ACA-NOT)

| ID | Feature | Priority |
|---|---|---|
| ACA-NOT-001 | Class notes — title/content/attachment with class-section-subject taxonomy, downloadable, submission tracking | Should Have |
| ACA-SYL-001 | Syllabus management — session/class-organized, download/view, soft-delete | Should Have |
| ACA-DIA-001 | Daily diary (প্রতিদিনের কার্যক্রম) — parent-facing daily log | Could Have |

# 4. Catalog Summary

6 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

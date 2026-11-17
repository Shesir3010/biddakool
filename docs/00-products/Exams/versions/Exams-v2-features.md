# Exams Module - V2 Features (Additional)

## Document Control

| Field | Details |
|---|---|
| Module | Exams |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V2 - Additional (Release R2) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Exams-PRD.md"](../Exams-PRD.md) (source of truth), ["Exams-features.md"](../Exams-features.md) (module index), ["Exams-v2-scope.md"](Exams-v2-scope.md), ["Exams-business-rules.md"](../Exams-business-rules.md), ["Exams-user-stories.md"](../Exams-user-stories.md), ["Exams-workflows.md"](../Exams-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Exams V2 features** (Additional, release R2). **A feature exists in V2 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Exams-features.md"](../Exams-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** EXA-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Should Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Report Card Designer (EXA-RPT)

| ID | Feature | Priority |
|---|---|---|
| EXA-RPT-009 | Full report-card designer — any mark distribution, per-subject paper splits (CQ/MCQ/Practical), dual scales on one sheet, custom comment fields, special evaluation, multi-signature blocks, moral/co-curricular grids | Should Have |
| EXA-RPT-010 | Grade preset packs — US 12-tier (A+..F), UK-style boundaries, madrasa Division system (Mumtaz…Rasib + Star Mark) | Should Have |
| EXA-RPT-011 | Subject stats on tabulation — Highest/Lowest/Average/Median, pass-fail & grade-distribution rows, GPA-5 count, Top-10 count | Should Have |
| EXA-RPT-012 | Highest-marks columns (per subject & per row) | Could Have |
| EXA-RPT-013 | Failed-marks highlighting & fail encodings (F2-style, circled red) | Could Have |

# 4. Catalog Summary

5 features catalogued in V2.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

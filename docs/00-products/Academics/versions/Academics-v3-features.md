# Academics Module - V3 Features (Later)

## Document Control

| Field | Details |
|---|---|
| Module | Academics |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V3 - Later (Release R3) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Academics-PRD.md"](../Academics-PRD.md) (source of truth), ["Academics-features.md"](../Academics-features.md) (module index), ["Academics-v3-scope.md"](Academics-v3-scope.md), ["Academics-business-rules.md"](../Academics-business-rules.md), ["Academics-user-stories.md"](../Academics-user-stories.md), ["Academics-workflows.md"](../Academics-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Academics V3 features** (Later, release R3). **A feature exists in V3 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Academics-features.md"](../Academics-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** ACA-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Could Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Courses & Online Learning (ACA-CRS)

| ID | Feature | Priority |
|---|---|---|
| ACA-CRS-001 | Course activities — live/online class, lecture sheet upload, assignments with start date & deadline | Could Have |
| ACA-CRS-002 | Student submissions + teacher grading — text/file upload, late detection, marks + feedback, in-app annotation of handwritten work | Could Have |
| ACA-CRS-003 | Own-website exam portal integration (institution-branded course results) | Could Have |

### Quizzes (ACA-QUI)

| ID | Feature | Priority |
|---|---|---|
| ACA-QUI-001 | Online MCQ quizzes — score panel (correct/incorrect/skipped + %), donut charts, per-question scoring, portal "Start Quiz" | Could Have |

### Teacher Evaluation (ACA-TEC)

| ID | Feature | Priority |
|---|---|---|
| ACA-TEC-001 | Teacher evaluation by students — structured questionnaire (11 explicit + 5 implicit curriculum items), 5-point frequency scale, conditional justification, comments | Could Have |

# 4. Catalog Summary

5 features catalogued in V3.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

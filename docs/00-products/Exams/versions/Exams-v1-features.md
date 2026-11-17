# Exams Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Exams |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Exams-PRD.md"](../Exams-PRD.md) (source of truth), ["Exams-features.md"](../Exams-features.md) (module index), ["Exams-v1-scope.md"](Exams-v1-scope.md), ["Exams-business-rules.md"](../Exams-business-rules.md), ["Exams-user-stories.md"](../Exams-user-stories.md), ["Exams-workflows.md"](../Exams-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Exams V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Exams-features.md"](../Exams-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** EXA-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** the assessment engine — exam operations, marks entry, results, report cards, and online publication. Flagship differentiator of the benchmark.

### Exam Operations (EXA-EXM)

| ID | Feature | Priority |
|---|---|---|
| EXA-EXM-001 | Customizable exam framework — CT, Mid Test, Semester/Term Final, Half-Yearly, Special Exam… fully custom per institution | Must Have |
| EXA-EXM-002 | Exam schedules | Must Have |
| EXA-EXM-003 | Admit cards — custom design, subject list w/ codes, date/time, contact, signature/stamp areas | Should Have |
| EXA-EXM-004 | Seat plans — printable cards w/ photo & info, 4/page, subject filter | Should Have |

### Marks (EXA-MRK)

| ID | Feature | Priority |
|---|---|---|
| EXA-MRK-001 | Marks entry — subjective/objective/practical columns per subject, full-marks row, absent toggle | Must Have |
| EXA-MRK-002 | Publish-time scheduling for marks | Should Have |
| EXA-MRK-003 | Blank sheet download | Should Have |
| EXA-MRK-004 | Marks comparison | Should Have |

### Results & Report Cards (EXA-RPT)

| ID | Feature | Priority |
|---|---|---|
| EXA-RPT-001 | Report card generation — customizable per institution (standard template) | Must Have |
| EXA-RPT-002 | Grade systems — Bangladesh A+..F (5.0 scale), letter grades | Must Have |
| EXA-RPT-003 | Positions — section position, class position, position-out-of | Must Have |
| EXA-RPT-004 | Tabulation sheets — Summary & Detailed class matrix | Should Have |
| EXA-RPT-005 | Merit list + Failed & Absent lists (fail counts + failed subjects w/ marks) | Should Have |
| EXA-RPT-006 | Result summary at-a-glance — section-wise & institution-wide, All vs Resident vs Non-Resident segmentation | Should Have |
| EXA-RPT-007 | Attendance stats on report cards — working days, present %, per-exam classes held/present/absent | Should Have |
| EXA-RPT-008 | Multi-semester combined result — all semesters + weighted final config | Should Have |
| EXA-RES-001 | Online result publication — institution website + portal, public lookup (Session/Semester/ID + reCAPTCHA), branded transcript, PDF/image, no-login access | Should Have |

# 4. Catalog Summary

17 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

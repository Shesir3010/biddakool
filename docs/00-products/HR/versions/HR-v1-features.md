# HR Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | HR |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["HR-PRD.md"](../HR-PRD.md) (source of truth), ["HR-features.md"](../HR-features.md) (module index), ["HR-v1-scope.md"](HR-v1-scope.md), ["HR-business-rules.md"](../HR-business-rules.md), ["HR-user-stories.md"](../HR-user-stories.md), ["HR-workflows.md"](../HR-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of HR V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["HR-features.md"](../HR-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** HR-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** the people who run the institution — profiles, presence, and the attendance data payroll depends on.

### Employees (HR-EMP)

| ID | Feature | Priority |
|---|---|---|
| HR-EMP-001 | Teacher/staff 360° profile — personal, family (spouse), education, administration (designation, joining date, subjects, nominee, competence areas), experience history | Must Have |
| HR-EMP-002 | Employee lists & bulk tools (bulk password set, bulk photo upload, bulk data update) | Must Have |

### Staff Attendance (HR-ATT)

| ID | Feature | Priority |
|---|---|---|
| HR-ATT-001 | Staff attendance — device-based (RFID card/fingerprint/face/palm) + manual, late tracking (⏱), in/out timestamps | Must Have |
| HR-ATT-002 | Attendance dashboards — employees/working-days/avg-present widgets, present/absent/late/leave charts | Should Have |
| HR-ATT-003 | Attendance→payroll data linkage — Working Days/Present/Absent/Late/Leave feeding salary calculation, fines & deductions | Must Have |

# 4. Catalog Summary

5 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

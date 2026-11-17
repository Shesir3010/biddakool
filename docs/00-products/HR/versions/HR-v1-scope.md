# HR Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | HR |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["HR-v1-features.md"](HR-v1-features.md) (authoritative V1 list), ["HR-features.md"](../HR-features.md) (index), ["HR-PRD.md"](../HR-PRD.md), ["HR-business-rules.md"](../HR-business-rules.md), ["HR-user-stories.md"](../HR-user-stories.md), ["HR-workflows.md"](../HR-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the HR module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["HR-v1-features.md"](HR-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 5 features catalogued in ["HR-v1-features.md"](HR-v1-features.md). Deferred work lives in the V2/V3 catalogs (["HR-v2-features.md"](HR-v2-features.md), ["HR-v3-features.md"](HR-v3-features.md)); parked items are recorded in the [module index](../HR-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| HR-EMP-001 | Teacher/staff 360° profile — personal, family (spouse), education, administration (designation, joining date, subjects, nominee, competence areas), experience history | Must Have | Planned |  |
| HR-EMP-002 | Employee lists & bulk tools (bulk password set, bulk photo upload, bulk data update) | Must Have | Planned |  |
| HR-ATT-001 | Staff attendance — device-based (RFID card/fingerprint/face/palm) + manual, late tracking (⏱), in/out timestamps | Must Have | Planned |  |
| HR-ATT-002 | Attendance dashboards — employees/working-days/avg-present widgets, present/absent/late/leave charts | Should Have | Planned |  |
| HR-ATT-003 | Attendance→payroll data linkage — Working Days/Present/Absent/Late/Leave feeding salary calculation, fines & deductions | Must Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

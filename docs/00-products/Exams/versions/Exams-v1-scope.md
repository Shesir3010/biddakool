# Exams Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Exams |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Exams-v1-features.md"](Exams-v1-features.md) (authoritative V1 list), ["Exams-features.md"](../Exams-features.md) (index), ["Exams-PRD.md"](../Exams-PRD.md), ["Exams-business-rules.md"](../Exams-business-rules.md), ["Exams-user-stories.md"](../Exams-user-stories.md), ["Exams-workflows.md"](../Exams-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Exams module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Exams-v1-features.md"](Exams-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 17 features catalogued in ["Exams-v1-features.md"](Exams-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Exams-v2-features.md"](Exams-v2-features.md), ["Exams-v3-features.md"](Exams-v3-features.md)); parked items are recorded in the [module index](../Exams-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| EXA-EXM-001 | Customizable exam framework — CT, Mid Test, Semester/Term Final, Half-Yearly, Special Exam… fully custom per institution | Must Have | Planned |  |
| EXA-EXM-002 | Exam schedules | Must Have | Planned |  |
| EXA-EXM-003 | Admit cards — custom design, subject list w/ codes, date/time, contact, signature/stamp areas | Should Have | Planned |  |
| EXA-EXM-004 | Seat plans — printable cards w/ photo & info, 4/page, subject filter | Should Have | Planned |  |
| EXA-MRK-001 | Marks entry — subjective/objective/practical columns per subject, full-marks row, absent toggle | Must Have | Planned |  |
| EXA-MRK-002 | Publish-time scheduling for marks | Should Have | Planned |  |
| EXA-MRK-003 | Blank sheet download | Should Have | Planned |  |
| EXA-MRK-004 | Marks comparison | Should Have | Planned |  |
| EXA-RPT-001 | Report card generation — customizable per institution (standard template) | Must Have | Planned |  |
| EXA-RPT-002 | Grade systems — Bangladesh A+..F (5.0 scale), letter grades | Must Have | Planned |  |
| EXA-RPT-003 | Positions — section position, class position, position-out-of | Must Have | Planned |  |
| EXA-RPT-004 | Tabulation sheets — Summary & Detailed class matrix | Should Have | Planned |  |
| EXA-RPT-005 | Merit list + Failed & Absent lists (fail counts + failed subjects w/ marks) | Should Have | Planned |  |
| EXA-RPT-006 | Result summary at-a-glance — section-wise & institution-wide, All vs Resident vs Non-Resident segmentation | Should Have | Planned |  |
| EXA-RPT-007 | Attendance stats on report cards — working days, present %, per-exam classes held/present/absent | Should Have | Planned |  |
| EXA-RPT-008 | Multi-semester combined result — all semesters + weighted final config | Should Have | Planned |  |
| EXA-RES-001 | Online result publication — institution website + portal, public lookup (Session/Semester/ID + reCAPTCHA), branded transcript, PDF/image, no-login access | Should Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

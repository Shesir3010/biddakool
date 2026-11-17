# Portals Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Portals |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Portals-v1-features.md"](Portals-v1-features.md) (authoritative V1 list), ["Portals-features.md"](../Portals-features.md) (index), ["Portals-PRD.md"](../Portals-PRD.md), ["Portals-business-rules.md"](../Portals-business-rules.md), ["Portals-user-stories.md"](../Portals-user-stories.md), ["Portals-workflows.md"](../Portals-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Portals module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Portals-v1-features.md"](Portals-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 17 features catalogued in ["Portals-v1-features.md"](Portals-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Portals-v2-features.md"](Portals-v2-features.md), ["Portals-v3-features.md"](Portals-v3-features.md)); parked items are recorded in the [module index](../Portals-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| POR-ADM-001 | Admin web portal — all-module admin console with role-based menus | Must Have | Planned |  |
| POR-TEA-001 | Teacher dashboard — identity card (ID, branch, shifts/medium), tomorrow's classes, notices-events, own attendance (calendar + stats + donut) | Must Have | Planned |  |
| POR-TEA-002 | Student lists & 360° profile view (class/section-filtered, tags, Download Profile + Welcome Card) | Must Have | Planned |  |
| POR-TEA-003 | Take attendance — roll-call UI (Present/Absent/Late/Leave/Early-Leave, holiday warning) | Must Have | Planned |  |
| POR-TEA-004 | Marks entry UI (subjective/objective/practical, publish time, blank sheets) | Must Have | Planned |  |
| POR-STU-001 | Dashboard — identity banner, Class Teacher card, attendance calendar + stats + donut, dues card + Pay Now, latest exam marks (Passed/Failed badge), upcoming exams, today's & tomorrow's classes, notices-events, monthly calendar, support contact | Must Have | Planned |  |
| POR-STU-002 | Profile page — contact/family/personal incl. parents' NID + occupation, emergency contact, QR vCard, Health Card, siblings | Should Have | Planned |  |
| POR-STU-003 | Fees self-service — dues (select + Pay Now via MFS/card/netbanking), payment history, View Ledger | Must Have | Planned |  |
| POR-STU-004 | Attendance self-view — own calendar & subject-wise/percentage summaries | Must Have | Planned |  |
| POR-STU-005 | Exams self-view — marks table (w/ full & highest marks), report cards by semester (GPA/positions, Passed/Failed), PDF download, exam schedules | Must Have | Planned |  |
| POR-STU-006 | Academics self-view — daily lessons, Daily Diary, lesson evaluations, monthly progress, class notes (+submissions), syllabus, class routine, Important Links | Must Have | Planned |  |
| POR-STU-007 | Notices & events views — portal list + detail, print/PDF/Excel | Must Have | Planned |  |
| POR-STU-008 | Leave application (student side) | Should Have | Planned |  |
| POR-STU-009 | Guardian feedback submission (Guardian Feedbacks) | Could Have | Planned |  |
| POR-APP-001 | Mobile apps — student & guardian (Android Google Play + iOS App Store) | Must Have | Planned |  |
| POR-APP-002 | Mobile app — teacher | Must Have | Planned |  |
| POR-WEB-001 | Public website integration — online result lookup (Session/Semester/ID + reCAPTCHA, branded transcript), notices, admission form entry | Should Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

# Portals Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Portals |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Portals-PRD.md"](../Portals-PRD.md) (source of truth), ["Portals-features.md"](../Portals-features.md) (module index), ["Portals-v1-scope.md"](Portals-v1-scope.md), ["Portals-business-rules.md"](../Portals-business-rules.md), ["Portals-user-stories.md"](../Portals-user-stories.md), ["Portals-workflows.md"](../Portals-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Portals V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Portals-features.md"](../Portals-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** POR-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** the five experiences — admin web, teacher web/app, student/guardian app, public website.

### Admin (POR-ADM)

| ID | Feature | Priority |
|---|---|---|
| POR-ADM-001 | Admin web portal — all-module admin console with role-based menus | Must Have |

### Teacher (POR-TEA)

| ID | Feature | Priority |
|---|---|---|
| POR-TEA-001 | Teacher dashboard — identity card (ID, branch, shifts/medium), tomorrow's classes, notices-events, own attendance (calendar + stats + donut) | Must Have |
| POR-TEA-002 | Student lists & 360° profile view (class/section-filtered, tags, Download Profile + Welcome Card) | Must Have |
| POR-TEA-003 | Take attendance — roll-call UI (Present/Absent/Late/Leave/Early-Leave, holiday warning) | Must Have |
| POR-TEA-004 | Marks entry UI (subjective/objective/practical, publish time, blank sheets) | Must Have |

### Student & Guardian (POR-STU)

| ID | Feature | Priority |
|---|---|---|
| POR-STU-001 | Dashboard — identity banner, Class Teacher card, attendance calendar + stats + donut, dues card + Pay Now, latest exam marks (Passed/Failed badge), upcoming exams, today's & tomorrow's classes, notices-events, monthly calendar, support contact | Must Have |
| POR-STU-002 | Profile page — contact/family/personal incl. parents' NID + occupation, emergency contact, QR vCard, Health Card, siblings | Should Have |
| POR-STU-003 | Fees self-service — dues (select + Pay Now via MFS/card/netbanking), payment history, View Ledger | Must Have |
| POR-STU-004 | Attendance self-view — own calendar & subject-wise/percentage summaries | Must Have |
| POR-STU-005 | Exams self-view — marks table (w/ full & highest marks), report cards by semester (GPA/positions, Passed/Failed), PDF download, exam schedules | Must Have |
| POR-STU-006 | Academics self-view — daily lessons, Daily Diary, lesson evaluations, monthly progress, class notes (+submissions), syllabus, class routine, Important Links | Must Have |
| POR-STU-007 | Notices & events views — portal list + detail, print/PDF/Excel | Must Have |
| POR-STU-008 | Leave application (student side) | Should Have |
| POR-STU-009 | Guardian feedback submission (Guardian Feedbacks) | Could Have |

### Apps & Web (POR-APP)

| ID | Feature | Priority |
|---|---|---|
| POR-APP-001 | Mobile apps — student & guardian (Android Google Play + iOS App Store) | Must Have |
| POR-APP-002 | Mobile app — teacher | Must Have |
| POR-WEB-001 | Public website integration — online result lookup (Session/Semester/ID + reCAPTCHA, branded transcript), notices, admission form entry | Should Have |

# 4. Catalog Summary

17 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

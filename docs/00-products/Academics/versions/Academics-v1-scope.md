# Academics Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Academics |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Academics-v1-features.md"](Academics-v1-features.md) (authoritative V1 list), ["Academics-features.md"](../Academics-features.md) (index), ["Academics-PRD.md"](../Academics-PRD.md), ["Academics-business-rules.md"](../Academics-business-rules.md), ["Academics-user-stories.md"](../Academics-user-stories.md), ["Academics-workflows.md"](../Academics-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Academics module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Academics-v1-features.md"](Academics-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 6 features catalogued in ["Academics-v1-features.md"](Academics-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Academics-v2-features.md"](Academics-v2-features.md), ["Academics-v3-features.md"](Academics-v3-features.md)); parked items are recorded in the [module index](../Academics-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| ACA-ROU-001 | Class routine — day×period grid with times/tiffin break, color-coded cells (subject + teacher initials + room), teachers table + weekly class counts | Must Have | Planned |  |
| ACA-ROU-002 | Teacher routines — individual (weekly load totals), all-teachers grid, per-day filtered view | Should Have | Planned |  |
| ACA-LES-001 | Daily lessons — Class Work + Home Work per subject/date (admin + teacher entry, CRUD, print/PDF/Excel) | Must Have | Planned |  |
| ACA-NOT-001 | Class notes — title/content/attachment with class-section-subject taxonomy, downloadable, submission tracking | Should Have | Planned |  |
| ACA-SYL-001 | Syllabus management — session/class-organized, download/view, soft-delete | Should Have | Planned |  |
| ACA-DIA-001 | Daily diary (প্রতিদিনের কার্যক্রম) — parent-facing daily log | Could Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| Routines + daily lessons placed in V1 | 2026-11-18 | V1 student/teacher dashboards surface today's classes and lessons (portal dependency). |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

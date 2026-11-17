# Foundation Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Foundation |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Foundation-v1-features.md"](Foundation-v1-features.md) (authoritative V1 list), ["Foundation-features.md"](../Foundation-features.md) (index), ["Foundation-PRD.md"](../Foundation-PRD.md), ["Foundation-business-rules.md"](../Foundation-business-rules.md), ["Foundation-user-stories.md"](../Foundation-user-stories.md), ["Foundation-workflows.md"](../Foundation-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Foundation module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Foundation-v1-features.md"](Foundation-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 11 features catalogued in ["Foundation-v1-features.md"](Foundation-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Foundation-v2-features.md"](Foundation-v2-features.md), ["Foundation-v3-features.md"](Foundation-v3-features.md)); parked items are recorded in the [module index](../Foundation-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| FND-AUTH-001 | User accounts & role management | Must Have | Planned |  |
| FND-AUTH-002 | Granular permission matrix (View/Add/Edit/Delete per module) | Must Have | Planned |  |
| FND-AUTH-003 | Bulk password management (set/print/SMS/delete, batch by class/section/type) | Should Have | Planned |  |
| FND-STR-001 | Institution structure — Session, Branch (শাখা), Shift, Version (BM/EV), Class, Section, Group, Department | Must Have | Planned |  |
| FND-STR-002 | Academic session & year management | Must Have | Planned |  |
| FND-CAL-001 | Academic calendar (holidays, working days) | Must Have | Planned |  |
| FND-NOT-001 | Notices — rich body, attachments, published-on timestamps, admin CRUD, portal list/detail | Must Have | Planned |  |
| FND-NOT-002 | Events calendar — multi-day color-coded bars, month navigation | Should Have | Planned |  |
| FND-NOT-003 | Welcome banners | Could Have | Planned |  |
| FND-SET-001 | Global settings | Must Have | Planned |  |
| FND-COM-001 | Committees with named member roles (সভাপতি/মোহতামিম/Member…) | Could Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

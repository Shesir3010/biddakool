# Platform Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Platform |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Platform-v1-features.md"](Platform-v1-features.md) (authoritative V1 list), ["Platform-features.md"](../Platform-features.md) (index), ["Platform-PRD.md"](../Platform-PRD.md), ["Platform-business-rules.md"](../Platform-business-rules.md), ["Platform-user-stories.md"](../Platform-user-stories.md), ["Platform-workflows.md"](../Platform-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Platform module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Platform-v1-features.md"](Platform-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 8 features catalogued in ["Platform-v1-features.md"](Platform-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Platform-v2-features.md"](Platform-v2-features.md), ["Platform-v3-features.md"](Platform-v3-features.md)); parked items are recorded in the [module index](../Platform-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| PLA-TEN-001 | Institute onboarding — invite/register institutions with initial configuration | Must Have | Planned |  |
| PLA-TEN-002 | Multi-institution & multi-campus (branch) support with per-branch data isolation | Must Have | Planned |  |
| PLA-BIL-001 | SaaS billing — packages, institution bills ("Biddakool Bills") | Must Have | Planned |  |
| PLA-SUP-001 | Support ticket system with 24/7 support tracking | Must Have | Planned |  |
| PLA-SUP-002 | Help & tutorial center | Should Have | Planned |  |
| PLA-ADT-001 | Superadmin layer — elevated powers (Demo Mode, Inspector Mode, Execute SQL, Run Cron Manually, Clearance Entry) | Must Have | Planned |  |
| PLA-ADT-002 | Detailed audit trail | Must Have | Planned |  |
| PLA-ADT-003 | Automatic data backup | Must Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

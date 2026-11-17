# Communication Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Communication |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Communication-v1-features.md"](Communication-v1-features.md) (authoritative V1 list), ["Communication-features.md"](../Communication-features.md) (index), ["Communication-PRD.md"](../Communication-PRD.md), ["Communication-business-rules.md"](../Communication-business-rules.md), ["Communication-user-stories.md"](../Communication-user-stories.md), ["Communication-workflows.md"](../Communication-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Communication module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Communication-v1-features.md"](Communication-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 7 features catalogued in ["Communication-v1-features.md"](Communication-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Communication-v2-features.md"](Communication-v2-features.md), ["Communication-v3-features.md"](Communication-v3-features.md)); parked items are recorded in the [module index](../Communication-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| COM-SMS-001 | SMS composer — Masking (1.25৳) & Non-Masking (0.95৳), sender ID, templates ("load from template"), dynamic fields ([name]), live phone preview, banned-word detection, char counter + SMS-part calculator + encoding (GSM/UNI) | Must Have | Planned |  |
| COM-SMS-002 | Recipient building — Load Group, manual numbers, per-student picker, save recipient set as group, multi-part preview | Must Have | Planned |  |
| COM-SMS-003 | Sent SMS log — filters (branch, recipient, date, Has Error, Masking/Non-Masking), message body, parts count, error capture | Must Have | Planned |  |
| COM-SMS-004 | SMS balance top-up (online) & balance badges | Must Have | Planned |  |
| COM-AUT-001 | Auto-SMS on attendance — absent / present-on-time (w/ timestamp) / late | Must Have | Planned |  |
| COM-AUT-002 | Auto-SMS dues reminders (FEE-DUE-002 consumer) | Must Have | Planned |  |
| COM-AUT-003 | Auto-SMS login credentials to guardians | Should Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

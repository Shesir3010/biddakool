# Fees Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Fees |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Fees-v1-features.md"](Fees-v1-features.md) (authoritative V1 list), ["Fees-features.md"](../Fees-features.md) (index), ["Fees-PRD.md"](../Fees-PRD.md), ["Fees-business-rules.md"](../Fees-business-rules.md), ["Fees-user-stories.md"](../Fees-user-stories.md), ["Fees-workflows.md"](../Fees-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Fees module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Fees-v1-features.md"](Fees-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 12 features catalogued in ["Fees-v1-features.md"](Fees-v1-features.md). Deferred work lives in the V2/V3 catalogs (["Fees-v2-features.md"](Fees-v2-features.md), ["Fees-v3-features.md"](Fees-v3-features.md)); parked items are recorded in the [module index](../Fees-features.md).

# 3. Build Sequencing Plan

Working order: follow the catalog's area order - foundational/setup areas first, then transactional flows, then reporting and integrations. [TODO - refine into milestones M0-Mn when the module build plan is authored; the Students module carries the first fully authored example.]

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| FEE-PLN-001 | Fee heads & per-class fee structure (class-wise fee calc grid) | Must Have | Planned |  |
| FEE-PLN-002 | Medium-specific heads (Bangla-Medium / English-Version separate heads, e.g. Tuition BM/EV) | Should Have | Planned |  |
| FEE-COL-001 | Collect Fees (office) — per-head Actual/Payable/Waived/Paid/Due + Add Fees + month/notes | Must Have | Planned |  |
| FEE-COL-002 | Money receipt — printable Student Copy + Office Copy, receipt no., per-head breakdown, amount in words, accountant signature | Must Have | Planned |  |
| FEE-DIS-001 | Waiver/discount control | Should Have | Planned |  |
| FEE-DUE-001 | Dues management — dues till date, Dues Report w/ totals, overdue status | Must Have | Planned |  |
| FEE-DUE-002 | Auto due-reminder SMS to guardians | Should Have | Planned |  |
| FEE-RPT-001 | Fees Collections Report (multi-filter) | Should Have | Planned |  |
| FEE-RPT-002 | Fee Calculation Report (class-wise) | Should Have | Planned |  |
| FEE-RPT-003 | Collection Report (student-wise w/ collector & receipt links) | Should Have | Planned |  |
| FEE-PAY-001 | Online payment channels — MFS (bKash, Rocket, Nagad, mCash, OK Wallet, Dmoney), cards (VISA/Mastercard), net banking (AB Direct, City, MTB, Bank Asia, ispay…) | Must Have | Planned |  |
| FEE-PAY-002 | Portal self-service — dues table + Pay Now, payment history, View Ledger, T&C/refund acceptance at payment | Must Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| - | - | - |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD.

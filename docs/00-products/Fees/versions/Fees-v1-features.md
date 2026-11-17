# Fees Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Fees |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Fees-PRD.md"](../Fees-PRD.md) (source of truth), ["Fees-features.md"](../Fees-features.md) (module index), ["Fees-v1-scope.md"](Fees-v1-scope.md), ["Fees-business-rules.md"](../Fees-business-rules.md), ["Fees-user-stories.md"](../Fees-user-stories.md), ["Fees-workflows.md"](../Fees-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Fees V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Fees-features.md"](../Fees-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** FEE-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** money in — fee structures, collection at the office desk, receipts, dues, and online payments via MFS/cards/net-banking.

### Fee Setup (FEE-PLN)

| ID | Feature | Priority |
|---|---|---|
| FEE-PLN-001 | Fee heads & per-class fee structure (class-wise fee calc grid) | Must Have |
| FEE-PLN-002 | Medium-specific heads (Bangla-Medium / English-Version separate heads, e.g. Tuition BM/EV) | Should Have |

### Collection (FEE-COL)

| ID | Feature | Priority |
|---|---|---|
| FEE-COL-001 | Collect Fees (office) — per-head Actual/Payable/Waived/Paid/Due + Add Fees + month/notes | Must Have |
| FEE-COL-002 | Money receipt — printable Student Copy + Office Copy, receipt no., per-head breakdown, amount in words, accountant signature | Must Have |

### Discounts (FEE-DIS)

| ID | Feature | Priority |
|---|---|---|
| FEE-DIS-001 | Waiver/discount control | Should Have |

### Dues (FEE-DUE)

| ID | Feature | Priority |
|---|---|---|
| FEE-DUE-001 | Dues management — dues till date, Dues Report w/ totals, overdue status | Must Have |
| FEE-DUE-002 | Auto due-reminder SMS to guardians | Should Have |

### Reports (FEE-RPT)

| ID | Feature | Priority |
|---|---|---|
| FEE-RPT-001 | Fees Collections Report (multi-filter) | Should Have |
| FEE-RPT-002 | Fee Calculation Report (class-wise) | Should Have |
| FEE-RPT-003 | Collection Report (student-wise w/ collector & receipt links) | Should Have |

### Online Payments (FEE-PAY)

| ID | Feature | Priority |
|---|---|---|
| FEE-PAY-001 | Online payment channels — MFS (bKash, Rocket, Nagad, mCash, OK Wallet, Dmoney), cards (VISA/Mastercard), net banking (AB Direct, City, MTB, Bank Asia, ispay…) | Must Have |
| FEE-PAY-002 | Portal self-service — dues table + Pay Now, payment history, View Ledger, T&C/refund acceptance at payment | Must Have |

# 4. Catalog Summary

12 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

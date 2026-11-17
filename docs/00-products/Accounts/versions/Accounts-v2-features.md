# Accounts Module - V2 Features (Additional)

## Document Control

| Field | Details |
|---|---|
| Module | Accounts |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V2 - Additional (Release R2) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Accounts-PRD.md"](../Accounts-PRD.md) (source of truth), ["Accounts-features.md"](../Accounts-features.md) (module index), ["Accounts-v2-scope.md"](Accounts-v2-scope.md), ["Accounts-business-rules.md"](../Accounts-business-rules.md), ["Accounts-user-stories.md"](../Accounts-user-stories.md), ["Accounts-workflows.md"](../Accounts-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Accounts V2 features** (Additional, release R2). **A feature exists in V2 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Accounts-features.md"](../Accounts-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** ACC-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Should Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Accounting (ACC-ACT)

| ID | Feature | Priority |
|---|---|---|
| ACC-ACT-001 | Chart of accounts + income/expense entries | Should Have |
| ACC-ACT-002 | Income statement — per branch, date-range, particulars w/ Amount/Total/Balance | Should Have |
| ACC-ACT-003 | Cash flow statement — multi-account closing balances | Could Have |
| ACC-ACT-004 | Ledgers summary (Opening/Debit/Credit/Closing) + Ledger/Petty Cash Book with voucher-wise entries & per-student fee-head breakdown | Should Have |
| ACC-ACT-005 | Voucher system — purchase/sales/receipt/payment vouchers | Should Have |

### Payroll (ACC-PAY)

| ID | Feature | Priority |
|---|---|---|
| ACC-PAY-001 | Monthly payroll — attendance-integrated (working days/present/absent/late/leave), gross, deductions (PF, fines), net salary, Bank Transfer/Cash disbursement split, multi-select Pay Process | Should Have |
| ACC-PAY-002 | Provident Fund ledger — contribution start, total months, employee+employer contributions, grand total | Should Have |
| ACC-PAY-003 | Staff self-service — payslip history + own PF statement (opening/closing, monthly contributions) | Should Have |

# 4. Catalog Summary

8 features catalogued in V2.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

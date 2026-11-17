# Accounts Module - V3 Features (Later)

## Document Control

| Field | Details |
|---|---|
| Module | Accounts |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V3 - Later (Release R3) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Accounts-PRD.md"](../Accounts-PRD.md) (source of truth), ["Accounts-features.md"](../Accounts-features.md) (module index), ["Accounts-v3-scope.md"](Accounts-v3-scope.md), ["Accounts-business-rules.md"](../Accounts-business-rules.md), ["Accounts-user-stories.md"](../Accounts-user-stories.md), ["Accounts-workflows.md"](../Accounts-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Accounts V3 features** (Later, release R3). **A feature exists in V3 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Accounts-features.md"](../Accounts-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** ACC-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Could Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Donations (ACC-DON)

| ID | Feature | Priority |
|---|---|---|
| ACC-DON-001 | Donor dues — scheduled (monthly/periodic) donation dues w/ donor name/phone/period/amount, due-date tracking | Could Have |
| ACC-DON-002 | Donation collections + receipts (receipt no., amount, date-range totals) | Could Have |
| ACC-DON-003 | Reminder SMS to donors for pending collections | Could Have |

# 4. Catalog Summary

3 features catalogued in V3.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

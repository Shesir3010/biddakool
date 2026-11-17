# Fees Module - V2 Features (Additional)

## Document Control

| Field | Details |
|---|---|
| Module | Fees |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V2 - Additional (Release R2) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Fees-PRD.md"](../Fees-PRD.md) (source of truth), ["Fees-features.md"](../Fees-features.md) (module index), ["Fees-v2-scope.md"](Fees-v2-scope.md), ["Fees-business-rules.md"](../Fees-business-rules.md), ["Fees-user-stories.md"](../Fees-user-stories.md), ["Fees-workflows.md"](../Fees-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Fees V2 features** (Additional, release R2). **A feature exists in V2 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Fees-features.md"](../Fees-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** FEE-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Should Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Collection (FEE-COL)

| ID | Feature | Priority |
|---|---|---|
| FEE-COL-003 | Send SMS / Send Email on collection | Should Have |

### Reports (FEE-RPT)

| ID | Feature | Priority |
|---|---|---|
| FEE-RPT-004 | Waiver/Discount report | Could Have |

### Late Fine (FEE-LAT)

| ID | Feature | Priority |
|---|---|---|
| FEE-LAT-001 | Late fine head automation | Could Have |

# 4. Catalog Summary

3 features catalogued in V2.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

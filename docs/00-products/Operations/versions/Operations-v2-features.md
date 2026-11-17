# Operations Module - V2 Features (Additional)

## Document Control

| Field | Details |
|---|---|
| Module | Operations |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V2 - Additional (Release R2) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Operations-PRD.md"](../Operations-PRD.md) (source of truth), ["Operations-features.md"](../Operations-features.md) (module index), ["Operations-v2-scope.md"](Operations-v2-scope.md), ["Operations-business-rules.md"](../Operations-business-rules.md), ["Operations-user-stories.md"](../Operations-user-stories.md), ["Operations-workflows.md"](../Operations-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Operations V2 features** (Additional, release R2). **A feature exists in V2 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Operations-features.md"](../Operations-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** OPS-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Should Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Inventory (OPS-INV)

| ID | Feature | Priority |
|---|---|---|
| OPS-INV-001 | Items & stocks — units, unit cost & selling price, warehouse/branch, current stock & value, low-stock warning threshold, valuation totals | Should Have |
| OPS-INV-002 | Purchases & restocking from suppliers + purchase vouchers | Should Have |
| OPS-INV-003 | Sales to students (class-linked) — quantity × price − discount = total, sales receipts | Should Have |
| OPS-INV-004 | Stock transfers between warehouse ↔ branches | Could Have |

### Library (OPS-LIB)

| ID | Feature | Priority |
|---|---|---|
| OPS-LIB-001 | Catalog — books/CDs/magazines with full metadata (authors, publisher, ISBN, category, genre, cover, language, attachments) | Should Have |
| OPS-LIB-002 | Copy-level tracking — Copy No, Copy ID, Barcode, Shelf Position, circulation status, available-vs-total counters | Should Have |
| OPS-LIB-003 | Circulations — borrow/return ledger, lead period, overdue/days-late tracking | Should Have |

### Hostel (OPS-HOS)

| ID | Feature | Priority |
|---|---|---|
| OPS-HOS-001 | Halls registry — gender type, Warden + Assistant Warden, houses naming | Should Have |
| OPS-HOS-002 | Rooms & room types with monthly fees | Should Have |
| OPS-HOS-003 | Room allocation — Wing / Hall→Floor→Room per student | Should Have |

# 4. Catalog Summary

10 features catalogued in V2.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

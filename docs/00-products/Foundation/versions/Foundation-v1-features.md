# Foundation Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Foundation |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Foundation-PRD.md"](../Foundation-PRD.md) (source of truth), ["Foundation-features.md"](../Foundation-features.md) (module index), ["Foundation-v1-scope.md"](Foundation-v1-scope.md), ["Foundation-business-rules.md"](../Foundation-business-rules.md), ["Foundation-user-stories.md"](../Foundation-user-stories.md), ["Foundation-workflows.md"](../Foundation-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Foundation V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Foundation-features.md"](../Foundation-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** FND-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** the shared foundation every other module stands on — identity, access, structure, calendar, notices.

### Auth & IAM (FND-AUTH)

| ID | Feature | Priority |
|---|---|---|
| FND-AUTH-001 | User accounts & role management | Must Have |
| FND-AUTH-002 | Granular permission matrix (View/Add/Edit/Delete per module) | Must Have |
| FND-AUTH-003 | Bulk password management (set/print/SMS/delete, batch by class/section/type) | Should Have |

### Institution Structure (FND-STR)

| ID | Feature | Priority |
|---|---|---|
| FND-STR-001 | Institution structure — Session, Branch (শাখা), Shift, Version (BM/EV), Class, Section, Group, Department | Must Have |
| FND-STR-002 | Academic session & year management | Must Have |

### Calendar (FND-CAL)

| ID | Feature | Priority |
|---|---|---|
| FND-CAL-001 | Academic calendar (holidays, working days) | Must Have |

### Notices & Events (FND-NOT)

| ID | Feature | Priority |
|---|---|---|
| FND-NOT-001 | Notices — rich body, attachments, published-on timestamps, admin CRUD, portal list/detail | Must Have |
| FND-NOT-002 | Events calendar — multi-day color-coded bars, month navigation | Should Have |
| FND-NOT-003 | Welcome banners | Could Have |

### Settings (FND-SET)

| ID | Feature | Priority |
|---|---|---|
| FND-SET-001 | Global settings | Must Have |

### Committees (FND-COM)

| ID | Feature | Priority |
|---|---|---|
| FND-COM-001 | Committees with named member roles (সভাপতি/মোহতামিম/Member…) | Could Have |

# 4. Catalog Summary

11 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

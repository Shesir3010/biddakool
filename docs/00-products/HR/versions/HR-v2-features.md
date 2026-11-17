# HR Module - V2 Features (Additional)

## Document Control

| Field | Details |
|---|---|
| Module | HR |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V2 - Additional (Release R2) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["HR-PRD.md"](../HR-PRD.md) (source of truth), ["HR-features.md"](../HR-features.md) (module index), ["HR-v2-scope.md"](HR-v2-scope.md), ["HR-business-rules.md"](../HR-business-rules.md), ["HR-user-stories.md"](../HR-user-stories.md), ["HR-workflows.md"](../HR-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of HR V2 features** (Additional, release R2). **A feature exists in V2 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["HR-features.md"](../HR-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** HR-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Should Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Leaves (HR-LEA)

| ID | Feature | Priority |
|---|---|---|
| HR-LEA-001 | Staff leave self-service — My Leave Applications, leave-type stat cards (Medical/Casual…), apply + approve/reject flows | Should Have |

### Documents (HR-DOC)

| ID | Feature | Priority |
|---|---|---|
| HR-DOC-001 | Teacher/staff ID cards (same engine as student cards) | Should Have |
| HR-DOC-002 | Teacher work logs, attestation & blacksheet records | Could Have |

### Reports (HR-RPT)

| ID | Feature | Priority |
|---|---|---|
| HR-RPT-001 | HR attendance reports (date-range, per-employee detail) | Should Have |

# 4. Catalog Summary

4 features catalogued in V2.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

# HR Module - V3 Features (Later)

## Document Control

| Field | Details |
|---|---|
| Module | HR |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V3 - Later (Release R3) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["HR-PRD.md"](../HR-PRD.md) (source of truth), ["HR-features.md"](../HR-features.md) (module index), ["HR-v3-scope.md"](HR-v3-scope.md), ["HR-business-rules.md"](../HR-business-rules.md), ["HR-user-stories.md"](../HR-user-stories.md), ["HR-workflows.md"](../HR-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of HR V3 features** (Later, release R3). **A feature exists in V3 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["HR-features.md"](../HR-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** HR-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Could Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### Recruitment (HR-REC)

| ID | Feature | Priority |
|---|---|---|
| HR-REC-001 | Online job applications — posts, applicant list filters (status/post/paid/gender/religion), statuses incl. Selected | Could Have |
| HR-REC-002 | Full application form — academic records (SSC/HSC/Bachelor/Masters), employment history, training, NID, emergency contacts, payment info | Could Have |
| HR-REC-003 | Recruitment exam admit card — center, date/time, roll, post, payment-verified badge | Could Have |

# 4. Catalog Summary

3 features catalogued in V3.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

# Communication Module - V2 Features (Additional)

## Document Control

| Field | Details |
|---|---|
| Module | Communication |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V2 - Additional (Release R2) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Communication-PRD.md"](../Communication-PRD.md) (source of truth), ["Communication-features.md"](../Communication-features.md) (module index), ["Communication-v2-scope.md"](Communication-v2-scope.md), ["Communication-business-rules.md"](../Communication-business-rules.md), ["Communication-user-stories.md"](../Communication-user-stories.md), ["Communication-workflows.md"](../Communication-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Communication V2 features** (Additional, release R2). **A feature exists in V2 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Communication-features.md"](../Communication-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** COM-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Should Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### In-App Messaging (COM-MSG)

| ID | Feature | Priority |
|---|---|---|
| COM-MSG-001 | In-app messaging — threads, timestamps, attachments, chat lists, read indicators (teacher/office ↔ guardian/student) | Should Have |
| COM-MSG-002 | Guardian sees all children in one login | Should Have |
| COM-MSG-003 | Guardian↔teacher messaging + guardian chat permission controls | Should Have |

### Auto Triggers (COM-AUT)

| ID | Feature | Priority |
|---|---|---|
| COM-AUT-004 | Extended auto-triggers — fee receipts, exam alerts, admission exam notices, teacher absent/present alerts, leave notifications, birthday wishes | Should Have |

### Push (COM-PUSH)

| ID | Feature | Priority |
|---|---|---|
| COM-PUSH-001 | Mobile push notifications (in-app broadcast) | Should Have |

# 4. Catalog Summary

5 features catalogued in V2.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.

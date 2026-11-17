# {{MODULE}} Module — Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | {{MODULE}} |
| Product | {{PRODUCT}} |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | {{DATE}} |
| Related Documents | [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) (source of truth), version catalogs under [`versions/`](versions/), [`{{MODULE}}-business-rules.md`]({{MODULE}}-business-rules.md), [`{{MODULE}}-user-stories.md`]({{MODULE}}-user-stories.md), [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md), [`{{MODULE}}-v1-scope.md`](versions/{{MODULE}}-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | {{DATE}} | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for {{MODULE}} features. **The authoritative feature rows live in the version-scoped catalogs under [`versions/`](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows — it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | [TODO] | [`{{MODULE}}-v1-features.md`](versions/{{MODULE}}-v1-features.md) |
| V2 | Additional | R2 | [TODO] | [`{{MODULE}}-v2-features.md`](versions/{{MODULE}}-v2-features.md) |
| V3 | Later | R3 | [TODO] | [`{{MODULE}}-v3-features.md`](versions/{{MODULE}}-v3-features.md) |

Global tier rollup: [`roadmap.md`](../roadmap.md).

# 3. Parked — Won't Have (now)

[TODO — parked feature IDs with reasons, or "No parked items for this module." Parked rows live here only; they never appear in version catalogs.]

# 4. Reading Order

1. [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) (§1–§3) — why the module exists, personas, scope.
2. The version catalog you are working on ([`versions/`](versions/)) — guidelines, then the catalog.
3. [`{{MODULE}}-business-rules.md`]({{MODULE}}-business-rules.md).
4. [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md).
5. [`{{MODULE}}-user-stories.md`]({{MODULE}}-user-stories.md).
6. [`{{MODULE}}-v1-scope.md`](versions/{{MODULE}}-v1-scope.md) — V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [TODO] | [TODO] |

# 6. Open Research Items

[TODO — claims or areas needing validation before build, or "No open research items recorded."]

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [`roadmap.md`](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- [TODO]
